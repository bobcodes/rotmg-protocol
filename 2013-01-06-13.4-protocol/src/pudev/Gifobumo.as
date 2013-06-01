package pudev
{
[CLASS983]   import flash.text.TextField;
   import koqeko.Cyqin;
   import haqakel.Cimujyva;


   public class Gifobumo extends TextField
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Gifobumo() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public static const finuqeni:uint = 977663;

      public static const tasuteke:uint = 15874138;

      public var reki:Cyqin;

      override public function set text(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super.text=this.kym(param1);
         return;
      }

      override public function set htmlText(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super.htmlText=this.kym(param1);
         return;
      }

      public function kym(param1:String) : String {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Cimujyva = null;
         if(this.reki.peqihoby.length)
         {
            _loc2_=this.reki.peqihoby[0];
            if(_loc2_.kojur)
            {
               this.gupocity(finuqeni);
            }
            else
            {
               this.gupocity(tasuteke);
            }
            return _loc2_.key;
         }
         return param1;
      }

      private function gupocity(param1:uint) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         background=true;
         backgroundColor=param1;
         return;
      }
   }
[/CLASS]
}