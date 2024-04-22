#ifndef TEST_H_
#define TEST_H_

class Base
{
public:
	Base() = default;


private:
	int a;
};

class Button : public Base
{
public:
	Button();

private:
	int b;

};


#endif // TEST_H_