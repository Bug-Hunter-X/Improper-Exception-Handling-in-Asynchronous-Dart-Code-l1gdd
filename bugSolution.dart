```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      print(data);
    } else {
      // Handle specific HTTP errors 
      throw Exception('HTTP error: ${response.statusCode}');
    }
  } on FormatException catch (e) {
    // Handle JSON decoding errors
    print('JSON format error: $e');
    rethrow;
  } on SocketException catch (e) {
    // Handle network errors
    print('Network error: $e');
    rethrow; 
  } catch (e) {
    // Catch any other exceptions
    print('An unexpected error occurred: $e');
    rethrow; // Re-throw for higher-level handling
  }
}
```