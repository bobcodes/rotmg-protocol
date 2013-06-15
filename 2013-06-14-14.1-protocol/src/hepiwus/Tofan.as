package hepiwus
{
   import flash.display.Sprite;
   import flash.geom.ColorTransform;
   import mukyrosu.Qanyduk;
   import flash.display.Bitmap;
   import com.company.util.AssetLibrary;
   import flash.display.BitmapData;
   import flash.events.MouseEvent;


   public class Tofan extends Sprite
   {
      public function Tofan() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         this.qycusug=0;
         this.kol();
         this.lofop();
         this.qajo();
         return;
      }

      private const dukamady:ColorTransform = new ColorTransform(0.5,0.5,0.5);

      private const lizava:ColorTransform = new ColorTransform(1,1,1);

      public const juzywim:Qanyduk = new Qanyduk(int);

      private var zoomOut:Sprite;

      private var zoomIn:Sprite;

      private var ruk:int;

      private var qycusug:int;

      public function kuca() : int {
         return this.qycusug;
      }

      public function benego(param1:int) : int {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.ruk==0)
         {
            return this.qycusug;
         }
         if(param1<0)
         {
            param1=0;
         }
         else
         {
            if(param1>=this.ruk-1)
            {
               param1=this.ruk-1;
            }
         }
         this.qycusug=param1;
         this.qajo();
         return this.qycusug;
      }

      public function jazusaf(param1:int) : int {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.ruk=param1;
         if(this.qycusug>=this.ruk)
         {
            this.qycusug=this.ruk-1;
         }
         this.qajo();
         return this.ruk;
      }

      private function kol() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Bitmap = null;
         var _loc1_:BitmapData = AssetLibrary.tem("lofiInterface",54);
         _loc2_=new Bitmap(_loc1_);
         _loc2_.scaleX=2;
         _loc2_.scaleY=2;
         this.zoomOut=new Sprite();
         this.zoomOut.x=0;
         this.zoomOut.y=4;
         this.zoomOut.addChild(_loc2_);
         this.zoomOut.addEventListener(MouseEvent.CLICK,this.vigylabuh);
         addChild(this.zoomOut);
         return;
      }

      private function lofop() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Bitmap = null;
         var _loc1_:BitmapData = AssetLibrary.tem("lofiInterface",55);
         _loc2_=new Bitmap(_loc1_);
         _loc2_.scaleX=2;
         _loc2_.scaleY=2;
         this.zoomIn=new Sprite();
         this.zoomIn.x=0;
         this.zoomIn.y=14;
         this.zoomIn.addChild(_loc2_);
         this.zoomIn.addEventListener(MouseEvent.CLICK,this.legot);
         addChild(this.zoomIn);
         return;
      }

      private function vigylabuh(param1:MouseEvent) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         if(this.hyguroty())
         {
            this.juzywim.dispatch(--this.qycusug);
            this.zoomOut.transform.colorTransform=this.hyguroty()?this.lizava:this.dukamady;
         }
         return;
      }

      private function hyguroty() : Boolean {
         return this.qycusug>0;
      }

      private function legot(param1:MouseEvent) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         if(this.bozyn())
         {
            this.juzywim.dispatch(++this.qycusug);
            this.zoomIn.transform.colorTransform=this.bozyn()?this.lizava:this.dukamady;
         }
         return;
      }

      private function bozyn() : Boolean {
         return this.qycusug<this.ruk-1;
      }

      private function qajo() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.zoomIn.transform.colorTransform=this.bozyn()?this.lizava:this.dukamady;
         this.zoomOut.transform.colorTransform=this.hyguroty()?this.lizava:this.dukamady;
         return;
      }
   }

}