package civinib
{
      public function not(param1:Object) : Dyn {
         if(param1 is Dyn)
         {
            return new Favokoby(param1 as Dyn);
         }
         return not(equalTo(param1));
      }
}