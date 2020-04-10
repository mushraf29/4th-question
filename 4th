#include<stdio.h>
#include<stdlib.h>
void push1(int x);
void push2(int x);
int pop1();
int pop2();
void enQ();
void deQ();
void display();
int s1[50],s2[50],top1=-1,top2=-1;
void main()
{
int ch;
for( ; ; )
{
printf("menu");
printf("1.enQ\n 2.deQ\n 3.display\n4.exit\n");
printf("enter your choice");
scanf("%d",&ch);
switch(ch)
{
case 1:enQ();break;
case 2:deQ();break;
case 3:display();break;
case 4:exit(0);break;
default:printf("wrong choice");
}
}
}
void enQ()
{
int x,temp;
printf("enter element to enQ");
scanf("%d",&x);
while(top1!=-1)
{
temp=pop1();
push1(temp);
}
push1(x);
while(top2!=-1)
{
temp=pop2();
push2(temp);
}
}
void deQ()
{
int temp;
temp=pop1();
printf("deleted element is %d",temp);
}
void push1(int x)
{
s1[++top1]=x;
}
void push2(int x)
{
s2[++top2]=x;
}
int pop1()
{
return(s1[top1--]);
}
int pop2()
{
return(s2[top2--]);
}
void display()
{
int i;
for(i=0;i<=top1;i++)
{
printf("%d ",s1[i]);
}
}

