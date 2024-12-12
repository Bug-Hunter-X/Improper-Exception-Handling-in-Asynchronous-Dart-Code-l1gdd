# Improper Exception Handling in Asynchronous Dart Code

This repository demonstrates a common error in Dart: insufficient exception handling in asynchronous operations using `Future` and `async/await`. The original `bug.dart` file showcases the flawed implementation, while `bugSolution.dart` provides a corrected version.  The example focuses on fetching data from a remote API, but the principles apply to other asynchronous tasks.

**Key Issues Addressed:**

* **Lost Exceptions:** The original code catches exceptions, but doesn't rethrow them, resulting in silent failures.  The improved version explicitly rethrows caught exceptions for proper propagation.
* **Incomplete HTTP Status Code Handling:** The original code only handles a `200 OK` response. The improved version demonstrates more robust error checks for various HTTP status codes.
* **Clearer Error Reporting:** More informative error messages aid in debugging.

This example illustrates best practices for writing robust and reliable asynchronous Dart code.