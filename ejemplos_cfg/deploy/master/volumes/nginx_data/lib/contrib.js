
// The following code DOES NOT WORK in any IE version (at least until v9).
// It could allow to access properties in HMG style:
// 
// ie:
//
// oButton.value = 'new';
//
// or
//
// alert(oButton.value);
//
//
//Object.defineProperty
//(
//	Button.prototype,'value',
//	{
//
//		get:function()
//		{
//			return "hey";
//		}
//
//		,
//
//		set:function(value)
//		{
//
//		}
//
//	}
//
//);

Button.prototype.disable = function()
{
	document.getElementById( this.getId() ).disabled = true;
}

Button.prototype.enable = function()
{
	document.getElementById( this.getId() ).disabled = false;
}

Grid.prototype.setJustify = function( aAlign )
{
   var rowcount = this.getRowCount()
   var i = 0;
   var j = 0;
   for( i = rowcount - 1; i > 0; i-- )
   {
      for( j = 1; j <= ( aAlign ).length; j++ )
      {
         document.getElementById( this.getId() ).rows[ i ].cells[ j ].style.textAlign = aAlign[ j - 1 ];
      }   
   }
}

TextBox.prototype.setJustify = function( cAlign )
{
   document.getElementById( this.getId() ).style.textAlign = cAlign;
}



