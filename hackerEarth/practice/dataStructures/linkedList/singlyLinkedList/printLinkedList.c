// Print Linked List

/*

   Let's put the learning to use. We already learnt how to traverse a Linked List using a while loop .
   We have to keep two things in mind:
       Take head as the starting reference.
       Loop till p->next is NULL.
   Sanad has a problem, he is a beginner to Linked Lists just like you and he needs your help.
   Given a linked list fill the function printList() to print the elements of the list.

*/

#include<stdio.h>
#include<stdlib.h>

struct LinkedList{
	int data;
	struct LinkedList *next;
};

typedef struct LinkedList *node;

node createNode(){

	node temp;
	temp = (node)malloc(sizeof(node));
	temp->next = NULL;
	return temp;
}
void addNode(node head, int value){

	node temp,p;
	p = head;
	temp = createNode();
	temp->data = value;
	while(p->next != NULL){
	    p = p->next;
	}
	p->next = temp;
}
void printList(node head){

	node p;
	p = head;
	while(p -> next !=Null ){//Enter the last node condition here
	//Enter the traversing code here
	printf("%d\n",p -> data);//Enter the code to access data field of the node
	}
}
void main() {
	node head;
	head = (node)malloc(sizeof(node));
	head->next = NULL;
	addNode(head, 1);
	addNode(head, 2);
	addNode(head, 3);
	addNode(head, 4);
	printList(head);
}
