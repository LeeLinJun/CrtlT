#include <stdio.h>
#include <gsl/gsl_poly.h>


#define order 6
int
main (void)
{
   int i;
	    /* coefficients of P(x) =  -1 + x^5  */
   double a[order] = { 1, 1, 1, 2,3,5 };  
   double z[order*2];

   gsl_poly_complex_workspace * w 
	= gsl_poly_complex_workspace_alloc (order);
		  
   gsl_poly_complex_solve (a, order, w, z);

   gsl_poly_complex_workspace_free (w);

   for (i = 0; i < order-1; i++)
   {
    printf ("z%d = %+.18f %+.18f\n", 
    i, z[2*i], z[2*i+1]);
						    }

   return 0;
}
