package loqaj
{
   import flash.geom.Matrix;
   import flash.display.Bitmap;
   import sijizoh.Duq;
   import hivysif.Pyzykyj;
   import jediwip.Vofezuzy;
   import flash.display.BitmapData;
   import copano.Byz;


   public class Rivylicec extends Kuk
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Rivylicec(param1:int, param2:Byz, param3:Boolean) {
         var _loc4_:* = true;
         var _loc5_:* = false;
         super(param1,param2,param3);
         return;
      }

      private static const begatywy:Matrix = new Matrix();

      public var hotKey:int;

      private var nucosiny:Bitmap;

      public function qamudo(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.hotKey=param1;
         this.syki();
         return;
      }

      public function syki() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:Pyzykyj = Duq.pamazo().getInstance(Pyzykyj);
         var _loc2_:BitmapData = _loc1_.make(new Vofezuzy(String(this.hotKey)),26,3552822,true,begatywy,false);
         this.nucosiny=new Bitmap(_loc2_);
         this.nucosiny.x=WIDTH/2-this.nucosiny.width/2;
         this.nucosiny.y=HEIGHT/2-14;
         addChildAt(this.nucosiny,0);
         return;
      }

      override public function setItemSprite(param1:Hajuveby) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super.setItemSprite(param1);
         param1.setDim(false);
         return;
      }

      override public function setItem(param1:int) : Boolean {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Boolean = super.setItem(param1);
         if(_loc2_)
         {
            this.nucosiny.visible=soqugarol.itemId<=0;
         }
         return _loc2_;
      }

      override protected function beginDragCallback() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.nucosiny.visible=true;
         return;
      }

      override protected function endDragCallback() : void {
         var [OFS3]_loc1_:* = [/OFS]false;
         var [OFS4]_loc2_:* = [/OFS]true;
         this.[OFS8]nucosiny[/OFS].[OFS20]visible[/OFS][OFS20]=[/OFS][OFS11]soqugarol[/OFS].[OFS14]itemId[/OFS][OFS19]<=[/OFS][OFS17]0[/OFS];
         [OFS22]return[/OFS];
      }
   }

}