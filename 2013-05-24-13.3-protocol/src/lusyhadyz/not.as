package lusyhadyz
{
      public function not(param1:Object) : Waha {
         if(param1 is Waha)
         {
            return new Pube(param1 as Waha);
         }
         return not(equalTo(param1));
      }
}