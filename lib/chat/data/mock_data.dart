Map<String, dynamic> mockData = {
  'User': [
    {
      'name': 'John Doe',
      'id': '1',
      'conversations': [
        {
          'userId1': '1',
          'userId2': '2',
          'messages': [
            {
              'message': "Hey, how's it going?",
              'timeSent': 1623456789,
              'senderId': '1',
              'receiverId': '2'
            },
            {
              'message': 'Good, thanks for asking. How about you?',
              'timeSent': 1623456799,
              'senderId': '2',
              'receiverId': '1'
            }
          ],
          'conversationId': '1',
          'title': 'John and Jane'
        }
      ]
    },
    {
      'name': 'Jane Doe',
      'id': '2',
      'conversations': [
        {
          'userId1': '1',
          'userId2': '2',
          'messages': [
            {
              'message': "Hey, how's it going?",
              'timeSent': 1623456789,
              'senderId': '1',
              'receiverId': '2'
            },
            {
              'message': 'Good, thanks for asking. How about you?',
              'timeSent': 1623456799,
              'senderId': '2',
              'receiverId': '1'
            }
          ],
          'conversationId': '1',
          'title': 'John and Jane'
        }
      ]
    }
  ]
};
