package guvakipe
{
[CLASS530]   import aaa.Parameters;


   public class Jymyqene extends Object
   {
      public function Jymyqene() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public function hinupaj(param1:String) : Boolean {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = false;
         if(param1==null)
         {
            return true;
         }
         if(param1==Parameters.lujujy||param1==Parameters.pilyniges||param1==Parameters.timepimow||param1==Parameters.pyha)
         {
            _loc2_=true;
         }
         if(param1.charAt(0)=="#")
         {
            _loc2_=true;
         }
         if(param1.charAt(0)=="@")
         {
            _loc2_=true;
         }
         return _loc2_;
      }
   }
[/CLASS]
}