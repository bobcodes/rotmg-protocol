package sojakil
{
   import com.company.assembleegameclient.ui.Memady;
   import hivysif.Guzowoja;
   import hivysif.Liwyny;
   import jediwip.Kybidu;


   public class Tojytijib extends Memady
   {
      public function Tojytijib(param1:int, param2:String, param3:int=0) {
         var _loc4_:* = false;
         var _loc5_:* = true;
         super(param3);
         zeledizi(param1);
         text_.setStringBuilder(new Kybidu().setParams(param2));
         initText();
         return;
      }

      override protected function makeText() : Guzowoja {
         return new Liwyny();
      }
   }

}