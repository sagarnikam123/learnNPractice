/**********************************************************************************************************************

	Version Control System

	A version control system(VCS) is a repository of files, often the files for the source code of computer programs,
	with monitored access. Every change made to the source is tracked, along with who made the change, why they made it,
	and references to problems fixed, or enhancements introduced, by the change. Version control systems are essential
	for any form of distributed, collaborative development. Whether it is the history of a wiki page or large software
	development project, the ability to track each change as it was made, and to reverse changes when necessary can make
	all the difference between a well managed and controlled process and an uncontrolled ‘first come, first served’
	system. It can also serve as a mechanism for due diligence for software projects. In this problem we'll consider a
	simplified model of a development project. Let's suppose, that there are N source files in the project.
	All the source files are distinct and numbered from 1 to N.
	A VCS, that is used for maintaining the project, contains two sequences of source files.
	The first sequence contains the source files, that are ignored by the VCS. If a source file is not in the first
	sequence, then it's considered to be unignored. The second sequence contains the source files, that are tracked by
	the VCS. If a source file is not in the second sequence, then it's considered to be untracked. A source file can
	either be or not be in any of these two sequences.
	Your task is to calculate two values: the number of source files of the project, that are both tracked and ignored,
	and the number of source files of the project, that are both untracked and unignored.

	Input
	The first line of the input contains an integer T denoting the number of test cases.
	The description of T test cases follows.
	The first line of the test case description contains three integers N, M and K denoting the number of source
		files in the project, the number of ignored source files and the number of tracked source files.
	The second line contains M distinct integers denoting the sequence A of ignored source files.
		The sequence is strictly increasing.
	The third line contains K distinct integers denoting the sequence B of tracked source files.
		The sequence is strictly increasing.

	Output
	For each test case, output a single line containing two integers: the number of the source files,
	that are both tracked and ignored, and the number of the source files, that are both untracked and unignored.

	Constraints
	1 ≤ T ≤ 100
	1 ≤ M, K ≤ N ≤ 100
	1 ≤ A1 < A2 < ... < AM ≤ N
	1 ≤ B1 < B2 < ... < BK ≤ N
***********************************************************************************************************************
Example

Input:
2
7 4 6
1 4 6 7
1 2 3 4 6 7
4 2 2
1 4
3 4

Output:
4 1
1 1

Explanation
In the first test case, the source files {1, 4, 6, 7} are both tracked and ignored, the source file {5} is
	both untracked and unignored.
In the second test case, the source file {4} is both tracked and ignored, the source file {2}
	is both untracked and unignored.
**********************************************************************************************************************/
package beginner;

public class VersionControlSystem {

	public static void main(String[] args) {

	}

}
