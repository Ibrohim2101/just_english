import 'package:flutter/material.dart';

class RatingScreen extends StatelessWidget {
  final List<User> users;

  RatingScreen({required this.users});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Leaderboard'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF00AEEF),
              Color(0xFF9B26AF),
            ],
          ),
        ),
        child: ListView.separated(
          itemCount: users.length,
          separatorBuilder: (context, index) => Divider(
            color: Colors.grey[200],
            height: 1,
          ),
          itemBuilder: (context, index) {
            if (index < 3) {
              return _buildLeaderboardItem(index);
            } else {
              return _buildNormalItem(index);
            }
          },
        ),
      ),
    );
  }

  Widget _buildLeaderboardItem(int index) {
    return ListTile(
      leading: Container(
        width: 36,
        height: 36,
        decoration: BoxDecoration(
          color: _getLeaderboardColor(index),
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Text(
            (index + 1).toString(),
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
      title: Text(
        users[index].name,
        style: TextStyle(
          fontSize: 16,
          color: Colors.white,
        ),
      ),
      subtitle: Text(
        'Score: ${users[index].score}',
        style: TextStyle(
          fontSize: 14,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _buildNormalItem(int index) {
    return ListTile(
      leading: CircleAvatar(
        child: Text(
          (index + 1).toString(),
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
      title: Text(
        users[index].name,
        style: TextStyle(
          fontSize: 16,
          color: Colors.white,
        ),
      ),
      subtitle: Text(
        'Score: ${users[index].score}',
        style: TextStyle(
          fontSize: 14,
          color: Colors.white,
        ),
      ),
    );
  }

  Color _getLeaderboardColor(int index) {
    if (index == 0) {
      return Colors.amber;
    } else if (index == 1) {
      return Colors.green;
    } else if (index == 2) {
      return Colors.brown[400]!;
    }
    return Colors.grey;
  }
}

class User {
  final String name;
  final int score;

  User({required this.name, required this.score});
}

