namespace om636
{
    template<class T>
    background< T >::background(context_type & c)
    : base_type(c)
    {}
    
    template<class T>
    void background< T >::on_swap(const context_type &, const context_type &)
    {
		glClearColor( 0, 0, 0, 1 ); 
		glClear( GL_COLOR_BUFFER_BIT ); 
    }
}