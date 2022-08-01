import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'My Login',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[300],
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Container(
        /**
         * Todo 1: 
         *  - The login form should be placed at the center of the screen
         * 
         * Hint:
         *  - [ margin ] can be apply for the spacing between form and the screen side
         *  - [ Center ] widget can be applied for center position
         */
        child: Card(
          /**
           * Todo 2:
           *  - Padding should be applied to insert space between form content with the form frame
           * 
           * Hint:
           *  - [ Padding ] widget can be used to wrap the form
           *  - [ EdgeInsets.symmetric() ] can be applied to provide consistent spacing in horizontal and vertical axis.
           */
          child: Form(
            /**
             * Todo 6:
             *  - Form validation should be performed to ensure input in email & password field fulfill expectation.
             *  - In case form validation is not passed, the user should not be allowed to sign-in
             *  - To achieve this, assign a [ GlobalKey<FormState> ] to the form and trigger a validation when sign-in button is clicked.
             *  - [ _key.currentState!.validate ] can be used to trigger the form validation
             * 
             * Hint:
             *  - Create a variable that holds the key that monitor FormState using [ GlobalKey<FormState>() ] constructor.
             *  - Assign the key created to this login form  
             */

            child: Column(
              /**
               * Todo 3:
               *  - We should limit the [ Column ] so that it will not takes up all vertical free space.
               *  - We should also left-aligned the form title and the form contents.
               * 
               * Hint:
               *  - The value of [ mainAxisSize ] affects the main axis size that should be occupied.
               *  - The value of [ crossAxisAlignment ] affects the horizontal axis alignment of Column widget. 
               */

              children: [
                // Header text
                const Text(
                  'Login',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22.0,
                  ),
                ),

                const SizedBox(height: 20.0),

                /**
                 * Todo 4:
                 *  - Create a [ TextFormField ] that takes in user email.
                 *  - In [ decoration ] parameter, use provided style [ kLoginTextFieldStyle ] with modifications:
                 *      1. a hint text 'Enter your email here'
                 *      2. an email icon at the start of the field [ Icons.mail_outline ]
                 *      3. a label 'Email'
                 *  - Apart from decoration, the following configuration can be added to improve user exp:
                 *      1. Configure the keyboard type so that it is suitable for email address input ( has '@' and '.' character).
                 *      2. The user should be navigate to the next text form field after entering email.
                 *      3. A validation on empty email address can be added.
                 *          Error message 'Email cannot be empty' should be shown when the input does not pass the validation.
                 *      4. The validation should be performed automatically when the user starts providing input until end of interaction.
                 * 
                 * Hint:
                 *  - In [ decoration ], use [ hintText ], [ prefixIcon ], [ label ] to modify the styling.
                 *  - [ keyboardType ] modifies the type of the keyboard to be shown when user interacts with [ TextFormField ].
                 *  - [ textInputAction ] modifies keyboard action button - go to next field, close keyboard etc.
                 *  - [ validator ] provides conditional validation. Return null if input is ok, otherwise return an error message to be displayed.
                 *  - [ autovalidateMode ] defines how auto validation function should be triggered - whether [ disabled ], [ always ] or [ onUserInteraction ].
                 */

                // Login email field
                Container(), // replace this with email field

                const SizedBox(height: 15.0),

                /**
                 * Todo 5:
                 *  - Create a [ TextFormField ] that takes in user password.
                 *  - In [ decoration ] parameter, use provided style [ kLoginTextFieldStyle ] with modifications:
                 *      1. a hint text 'Enter your password here'
                 *      2. an unlock icon at the start of the field [ Icons.lock_open_outlined ]
                 *      3. a label 'Password'
                 *  - Apart from decoration, the following configuration can be added to improve user exp:
                 *      1. User input (password) should be masked with '*' characters.
                 *      2. Configure the keyboard type so that it is suitable for password input.
                 *      3. The input action is completed after entering password.
                 *      4. A validation on empty password can be added.
                 *          Error message 'Password cannot be empty' should be shown when the input does not pass the validation.
                 *      5. The validation should be performed automatically when the user starts providing input until end of interaction.
                 * 
                 * Hint:
                 *  - In [ decoration ], use [ hintText ], [ prefixIcon ], [ label ] to modify the styling.
                 *  - [ obsureText ] flag determines whether the user input should be masked.
                 *  - [ keyboardType ] modifies the type of the keyboard to be shown when user interacts with [ TextFormField ].
                 *  - [ textInputAction ] modifies keyboard action button - go to next field, close keyboard etc.
                 *  - [ validator ] provides conditional validation. Return null if input is ok, otherwise return an error message to be displayed.
                 *  - [ autovalidateMode ] defines how auto validation function should be triggered - whether [ disabled ], [ always ] or [ onUserInteraction ].
                 */

                // Password field
                Container(), // replace this with password field

                const SizedBox(height: 15.0),

                /**
                 * Todo 7:
                 *  - Create a sign-in button with icon and text.
                 *  - When the button is pressed, the form validation should be triggered.
                 *  - The user should be navigate to OTP screen only when the form validation is passed.
                 * 
                 * Hint:
                 *  - Use [ ElevatedButton.icon() ] constructor to create a button with filled color, icon and text.
                 *  - [ formKey.currentState!.validate() ] can be used to trigger the form validation.
                 *  - You may specify [ routes ] in [ main() ] for the OTP screen and
                 *    use [ Navigator.of(context).pushNamed('/routeName') ] to trigger screen transition,
                 */

                // Sign in button
                Container(), // replace this with sign-in button

                const SizedBox(height: 15.0),

                // Divider
                const Divider(color: Colors.black),

                const SizedBox(height: 5.0),

                const Center(
                  child: Text(
                    'OR',
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 12.0,
                    ),
                  ),
                ),

                const SizedBox(height: 5.0),

                /**
                 * Todo 8:
                 *  - Create the Facebook and Google Sign-in buttons (UI only).
                 *  - As a workaround, trigger an empty function when button is pressed.
                 *  - Facebook button style:
                 *      1. Background color: Colors.blue[900]
                 *      2. Visual density: VisualDensity.comfortable
                 *      3. Label: 'Sign in with Facebook', fontSize: 12.0
                 *      4. Icon: Icons.facebook
                 *  - Google button style:
                 *      1. Background color: Colors.red
                 *      2. Text and icon color: Colors.white
                 *      3. Visual density: VisualDensity.comfortable
                 *      4. Label: 'Sign in with Google', fontSize: 12.0
                 *      5. Icon: Icons.g_mobiledata, icon size: 28.0
                 * 
                 * Hint:
                 *  - Apart from [ ElevatedButton.icon() ] constructor, you may also use the approach of 
                 *    putting icon and label into [ Row ] so that the spacing can be customized   
                 */

                // Social Login Buttons
                Container(), // replace this with both Facebook & Google Sign-in buttons

                const SizedBox(height: 5.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
