package racitagy
{
   import flash.display.Sprite;
   import haj.Linocele;
   import fanij.Cun;


   public class Gecibo extends Sprite implements Kes
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Gecibo() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.qosuti=new Pibadope();
         super();
         return;
      }

      public static const lamomuf:String = "topLeft";

      public static const vuzoqywi:String = "topRight";

      public static const kora:String = "bottomRight";

      public static const nawycywyh:String = "bottomLeft";

      public static const jidy:String = "regular";

      private static const bosysevah:Array = [lamomuf,vuzoqywi,kora,nawycywyh];

      public var qosuti:Pibadope;

      private var dul:Linocele;

      private var background:String;

      private var size:int;

      private var noru:Foky;

      public function gezycecip(param1:Linocele) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.dul=param1;
         addChild(param1);
         return;
      }

      public function disable() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.dul.disable();
         return;
      }

      public function isEnabled() : Boolean {
         return this.dul.isEnabled();
      }

      public function setSize(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.size=param1;
         return;
      }

      public function qojedyna(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.background=param1;
         if(this.noru)
         {
            removeChild(this.noru);
         }
         this.noru=Foky(this.qosuti.create(this.size,this.kuto()));
         addChildAt(this.noru,0);
         return;
      }

      private function kuto() : Array {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Array = [0,0,0,0];
         if(this.background!=jidy)
         {
            _loc1_[bosysevah.indexOf(this.background)]=1;
         }
         return _loc1_;
      }

      public function fibufu() : String {
         return this.background;
      }

      public function getPetVO() : Cun {
         return this.dul.getPetVO();
      }
   }

}