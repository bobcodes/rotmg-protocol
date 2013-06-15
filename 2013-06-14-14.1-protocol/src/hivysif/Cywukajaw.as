package hivysif
{
   import flash.text.TextField;
   import cycuka.Sesahareh;
   import komi.Naf;


   public class Cywukajaw extends TextField
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Cywukajaw() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public static const poqofum:uint = 977663;

      public static const meju:uint = 15874138;

      public var tazoge:Sesahareh;

      override public function set text(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super.text=this.hat(param1);
         return;
      }

      override public function set htmlText(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super.htmlText=this.hat(param1);
         return;
      }

      public function hat(param1:String) : String {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Naf = null;
         if(this.tazoge.pynacema.length)
         {
            _loc2_=this.tazoge.pynacema[0];
            if(_loc2_.nezuz)
            {
               this.qojedyna(poqofum);
            }
            else
            {
               this.qojedyna(meju);
            }
            return _loc2_.key;
         }
         return param1;
      }

      private function qojedyna(param1:uint) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         background=true;
         backgroundColor=param1;
         return;
      }
   }

}