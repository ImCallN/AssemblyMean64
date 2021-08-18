extern unsigned int mean64( unsigned int nums[] );
unsigned int mean;
unsigned int numbers[64];
int main()
{
	// initialize array with 1 -> 64
	for(int i=0; i<64; i++)
	{
		numbers[i] = i + 1;
	}// end for
	mean = mean64(numbers);
}// end main
