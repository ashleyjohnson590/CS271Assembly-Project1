# CS271Assembly-Project1
The purpose of this assignment is to acquaint you with elementary MASM programming and integer arithmetic operations (CLO 3, 4).

Introduction to MASM assembly language
Defining variables (integer and string)
Using library procedures for I/O
Integer arithmetic
What you must do
Program Description
Write and test a MASM program to perform the following tasks:

Display your name and program title on the output screen.
Display instructions for the user.
Prompt the user to enter three numbers (A, B, C) in strictly descending order.
Calculate and display the sum and differences: (A+B, A-B, A+C, A-C, B+C, B-C, A+B+C).
Display a closing message.
Program Requirements
The program must be fully documented and laid out according to the CS271 Style Guide. This includes a complete header block for identification, description, etc., and a comment outline to explain each section of code.
The main procedure must be divided into logical sections:
introduction
get the data
calculate the required values
display the results
say goodbye
The results of calculations must be stored in named variables before being displayed.
Notes
You are not required to handle negative input or negative results. We will not test input that would generate a negative output or overflow.
Check the Course Syllabus for late submission guidelines.
Find the assembly language instruction syntax and help in the CS271 Instructions Guide.
To create, assemble, run,  and modify your program, follow the instructions on the course Syllabus Page’s "Tools" tab.
Resources
Additional resources for this assignment

Program Solution Shell with Template.asm
CS271 Style Guide
CS271 Instructions Reference
CS271 Irvine Procedures Reference
What to turn in
Turn in a single .asm file (the actual Assembly Language Program file, not the Visual Studio solution file).  Files should be named "Proj1_ONID.asm" where ONID is your ONID username. Failure to name files according to this convention may result in reduced scores (or ungraded work). When you resubmit a file in Canvas, Canvas can attach a suffix to the file, e.g., the file name may become Proj1_ONID-1.asm. Don't worry about this name change as no points will be deducted because of this.

Example Execution
User input in boldface italics.

         Elementary Arithmetic     by Wile E. Coyote
Enter 3 numbers A > B > C, and I'll show you the sums and differences.
First number: 20
Second number: 10 
Third number: 5

20 + 10 = 30
20 - 10 = 10
20 + 5 = 25
20 - 5 = 15
10 + 5 = 15
10 - 5 = 5
20 + 10 + 5 = 35

Thanks for using Elementary Arithmetic!  Goodbye!
Extra Credit Options (Original Project Definition must be Fulfilled)
To receive points for any extra credit options, you must add one print statement to your program output per extra credit which describes the extra credit you chose to work on. You will not receive extra credit points unless you do this. The statement must be formatted as follows...

--Program Intro--
**EC: DESCRIPTION
--Program prompts, etc—
For example, for extra credit option #2, program execution would look like this:

         Elementary Arithmetic     by Wile E. Coyote
**EC: Program verifies the numbers are in descending order.

Enter 3 numbers A > B > C, and I'll show you the sums and differences.
First number: 20
Second number: 25
ERROR: The numbers are not in descending order!

Impressed?  Bye!
Extra Credit Options
Repeat until the user chooses to quit. (1pt)
Check if numbers are not in strictly descending order. (1pt)
Handle negative results and computes B-A, C-A, C-B, C-B-A. (1pt)
Calculate and display the quotients A/B, A/C, B/C, printing the quotient and remainder (see DIV and IDIV). (2pt)
Grading criteria
Please view the rubric attached to this assignment to understand how your assignment will be graded. If you have any questions please ask on the course discussion board.

Rubric
Project 1 Rubric
Project 1 Rubric
Criteria	Ratings	Pts
This criterion is linked to a Learning OutcomePreliminaries - Files Correctly Submitted
Submitted file is correct assignment and is an individual .asm file.
1 pts
Full Marks
0 pts
No Marks
1 pts
This criterion is linked to a Learning OutcomePreliminaries - Program assembles, links
Submitted program assembles and links without need for clarifying work for TA and/or messages to the student. This assumes the program is actually an attempt at the assignment. Non-attempts which compile/link earn no points.
2 pts
Full Marks
0 pts
No Marks
2 pts
This criterion is linked to a Learning OutcomeDocumentation - Identification Block - Header
Name, Date, Program number, etc as per Style Guide are included in Identification Block
2 pts
Full Marks
0 pts
Missing Info
Header block is not present, or is missing required information.
2 pts
This criterion is linked to a Learning OutcomeDocumentation - Identification Block - Program Description
Description of functionality and purpose of program in student's own words is included in identification block.
2 pts
Full Marks
1 pts
Lacking detail
Description is present but is lacking in detail with regard to functionality.
0 pts
No Marks
2 pts
This criterion is linked to a Learning OutcomeVerification - Program Executes
Program executes and makes some attempt at the assigned functionality.
5 pts
Full Marks
2 pts
Failed attempt
Program is an attempt at the correct assignment but simply does not run.
0 pts
Not An Attempt
Program executes but is either the incorrect program or some quickly mashed together nonsense, submitted only to 'get a few points'
5 pts
This criterion is linked to a Learning OutcomeCompleteness - Displays programmer name
Program prints out the programmer's name.
1 pts
Full Marks
0 pts
No Marks
1 pts
This criterion is linked to a Learning OutcomeCompleteness - Displays Introduction
Program displays the program introduction.
2 pts
Full Marks
0 pts
No Marks
2 pts
This criterion is linked to a Learning OutcomeCompleteness - Prompts user to input data
Program outputs a data request to user e.g. "Enter a number" three times.
1 pts
Full Marks
0 pts
No Marks
1 pts
This criterion is linked to a Learning OutcomeCompleteness - Gets data from user
Implements ReadDec or ReadInt, gets user-input data, and saves data to some memory variable (non-register).
2 pts
Full Marks
0 pts
No Marks
2 pts
This criterion is linked to a Learning OutcomeCompleteness - Displays Results
Program displays results in the form of
(20 + 10 = 30 |
20 + 5 = 25 |
etc..)
2 pts
Full Marks
0 pts
No Marks
2 pts
This criterion is linked to a Learning OutcomeCorrectness - Calculations are correct
Calculations are all correct. Lose 1 point per incorrect calculation to a minimum of 0 (SumAB | DifferenceAB | etc..)
5 pts
Full Marks
0 pts
No Marks
5 pts
This criterion is linked to a Learning OutcomeCorrectness - Original User Data Unchanged
Original variables holding user-entered data remain unchanged by all calculations and still hold original user-entered data at end of execution.
2 pts
Full Marks
0 pts
No Marks
2 pts
This criterion is linked to a Learning OutcomeRequirements - Modularized Code Blocks
Main procedure is separated into functional sections, each of which is described by comments.
5 pts
Blocks with Headers
3 pts
Blocks without Headers
Program is separated into logical blocks but those blocks are poorly commented
3 pts
Headers without Blocks
Program is not visibly separated into logical blocks with whitespace, but limited headers do indicate some organizational effort.
0 pts
No Marks
5 pts
This criterion is linked to a Learning OutcomeRequirements - Results stored in named variables
Results of calculations are stored in memory in discrete variables. Lose 1 point per missing variable usage to a minimum of 0 (SumAB | DifferenceAB | etc...)
5 pts
Full Marks
0 pts
No Marks
5 pts
This criterion is linked to a Learning OutcomeCoding Style - In-line Comments
In-line comments and block headers describe functionality of program flow as per CS271 Style Guide.
5 pts
Full Marks
0 pts
No Marks
5 pts
This criterion is linked to a Learning OutcomeCoding Style - Appropriately Named Identifiers
Identifiers named so that a person reading the code can intuit the purpose of a variable, constant, or label just by reading its name. See CS271 Style Guide
3 pts
Full Marks
1 pts
Partial
Some identifiers are named well, with others having no relevance to their functionality.
0 pts
No Marks
3 pts
This criterion is linked to a Learning OutcomeCoding Style - Readability
Program uses readable white-space, indentation, and spacing as per the CS271 Style Guide. Logical sections are separated by white space.
5 pts
Full Marks
3 pts
Marginally Readable
Program is marginally readable but lacks proper alignment and white space.
0 pts
No Marks
5 pts
This criterion is linked to a Learning OutcomeExtra Credit
Repeat until the user chooses to quit. (1pt) |
Checks if numbers are in non-descending order. (1pt) |
Handles negative results and computes B-A, C-A, C-B, C-B-A. (1pt) |
Calculate and display the quotients A/B, A/C, B/C, printing the quotient and remainder (see DIV and IDIV). (2pt)
0 pts
Full Marks
0 pts
No Marks
0 pts
This criterion is linked to a Learning OutcomeLate Penalty
Remove points here for late assignments. (Enter negative point value)
0 pts
Full Marks
0 pts
No Marks
0 pts
Total Points: 50
Submission
 Submitted!
Jan 20 at 4:29pm
Submission Details
Download Proj1_johnsas8-1.asm
Grade: 49 (50 pts possible)
Graded Anonymously: no
 View Rubric Evaluation
Comments:
Good work Ashley! Your in-line comments would work better as block comments above each of the blocks of code, since they are describing what that entire block does.
