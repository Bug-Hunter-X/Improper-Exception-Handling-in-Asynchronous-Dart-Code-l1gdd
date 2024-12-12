```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Correctly handle the response here
      final data = jsonDecode(response.body);
      print(data);
    } else {
      // Handle errors appropriately
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions like network errors
    print('Error fetching data: $e');
    // Re-throw the exception to be handled further up the call stack
    rethrow;
  }
}
```