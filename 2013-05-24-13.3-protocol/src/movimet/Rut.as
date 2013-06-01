package movimet
{
   import flash.text.TextField;
   import byzany.Lykyqe;
   import heko.Vubukudif;


   public class Rut extends TextField
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Rut() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public static const hywy:uint = 977663;

      public static const notyj:uint = 15874138;

      public var sisesinik:Lykyqe;

      override public function set text(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super.text=this.geheza(param1);
         return;
      }

      override public function set htmlText(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super.htmlText=this.geheza(param1);
         return;
      }

      public function geheza(param1:String) : String {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Vubukudif = null;
         if(this.sisesinik.fejedu.length)
         {
            _loc2_=this.sisesinik.fejedu[0];
            if(_loc2_.rot)
            {
               this.zubeg(hywy);
            }
            else
            {
               this.zubeg(notyj);
            }
            return _loc2_.key;
         }
         return param1;
      }

      private function zubeg(param1:uint) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         background=true;
         backgroundColor=param1;
         return;
      }
   }

}