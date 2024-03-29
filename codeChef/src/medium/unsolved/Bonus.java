/**

	Bonus
	B

	"td11">Bonus
	"td11">


	class="td10">Input file: 	class="td01">stdin
	class="td10">Output file: 	class="td01">stdout
	class="td10">

	Kinku is a project manager in his company. Recently, the
	executives decided to give bonus to everyone in his team, so Kinku was asked to give
	a list to them how much bonus each should get.

	To do this, he selected some pairs of members, and analyzed who
	should get more bonus, and how more much he should get (at least). That is, if
	employee Tom is better than Jerry, and Tom should get at least 300$ more than Jerry,
	then, if Jerry gets 650$ bonus, Tom has to get atleast 950$ bonus. It should also be
	noted that, every one will get at least a minimum, no one will go empty handed.

	Given all the comparisons, you have to find the minimum total
	bonus to be divided among the employees.

	Input

	First line contains T, the
	number of test cases.

	Each test case starts with three integers "cmmi-10x-x-109">N(1 ≤ "cmmi-10x-x-109">N ≤ 100),
	"cmmi-10x-x-109">M(0 ≤ "cmmi-10x-x-109">M ≤ "/download/problemset0x.png" alt="N-×(N−1) 2" class="frac"
	align="middle" />) and
	L(1 ≤
	L ≤
	10000), the number of employees, number of comparisons and minimum bonus. Next
	M lines each contains three integers,
	i, j(1
	≤ i, j
	≤ N and
	c(0 ≤
	c ≤ 1000),
	referring that employee "cmmi-8">i should get at least c$
	more than employee "cmmi-8">j .

	Output

	For each test case, output the minimum total bonus on the first
	line, and the bonus given to each employee in the next line.

	If comparisons are inconsistent, and it’s not possible
	distribute bonus among them, output “ "cmtt-10x-x-109">Inconsistent "cmtt-10x-x-109">analysis.”(without quotes).
***********************************************************************************************************************
Sample input and output
"td11">
stdin
	"td11">
stdout


2

4 "cmtt-10x-x-109">4 100
1 "cmtt-10x-x-109">2 10
2 "cmtt-10x-x-109">3 20
1 "cmtt-10x-x-109">3 40
2 "cmtt-10x-x-109">4 5
3 "cmtt-10x-x-109">3 100
1 "cmtt-10x-x-109">2 10
2 "cmtt-10x-x-109">3 10
3 "cmtt-10x-x-109">1 10

460

140 "cmtt-10x-x-109">120 100
100

Inconsistent
analysis.

**********************************************************************************************************************/

package medium.unsolved;

public class Bonus {

	public static void main(String[] args) {

	}

}
