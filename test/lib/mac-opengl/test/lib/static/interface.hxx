
namespace om636
{
	/////////////////////////////////////////////////////////////////////////////////////////////
	
	/////////////////////////////////////////////////////////////////////////////////////////////
   	template<class T, class U> 
	void hetero_swap(T & a, U & b)
	{
		U _a( a ); 
		T _b( b ); 
		a = _b; 
		b = _a;
	}
    
	/////////////////////////////////////////////////////////////////////////////////////////////
	
	/////////////////////////////////////////////////////////////////////////////////////////////
	template<class T>
	void hetero_swap(T & a, T & b)
	{
		using std::swap;
		swap( a, b ); 
	}
    
	
}	// om636

