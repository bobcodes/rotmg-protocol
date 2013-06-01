package wosate
{
[CLASS1613]   import flash.display.Sprite;
   import flash.geom.ColorTransform;
   import tinava.Dab;
   import com.company.util.AssetLibrary;
   import flash.display.BitmapData;
   import flash.display.Bitmap;
   import flash.events.MouseEvent;


   public class Myja extends Sprite
   {
      public function Myja() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         this.bymy=0;
         this.funalufy();
         this.laquvow();
         this.gujuryz();
         return;
      }

      private const cowu:ColorTransform = new ColorTransform(0.5,0.5,0.5);

      private const ferahyrem:ColorTransform = new ColorTransform(1,1,1);

      public const luzaricy:Dab = new Dab(int);

      private var zoomOut:Sprite;

      private var zoomIn:Sprite;

      private var sylupuf:int;

      private var bymy:int;

      public function kylipyh() : int {
         return this.bymy;
      }

      public function mos(param1:int) : int {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.sylupuf==0)
         {
            return this.bymy;
         }
         if(param1<0)
         {
            param1=0;
         }
         else
         {
            if(param1>=this.sylupuf-1)
            {
               param1=this.sylupuf-1;
            }
         }
         this.bymy=param1;
         this.gujuryz();
         return this.bymy;
      }

      public function gezykukeh(param1:int) : int {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.sylupuf=param1;
         if(this.bymy>=this.sylupuf)
         {
            this.bymy=this.sylupuf-1;
         }
         this.gujuryz();
         return this.sylupuf;
      }

      private function funalufy() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:BitmapData = AssetLibrary.zovy("lofiInterface",54);
         var _loc2_:Bitmap = new Bitmap(_loc1_);
         _loc2_.scaleX=2;
         _loc2_.scaleY=2;
         this.zoomOut=new Sprite();
         this.zoomOut.x=0;
         this.zoomOut.y=4;
         this.zoomOut.addChild(_loc2_);
         this.zoomOut.addEventListener(MouseEvent.CLICK,this.pikohuz);
         addChild(this.zoomOut);
         return;
      }

      private function laquvow() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Bitmap = null;
         var _loc1_:BitmapData = AssetLibrary.zovy("lofiInterface",55);
         _loc2_=new Bitmap(_loc1_);
         _loc2_.scaleX=2;
         _loc2_.scaleY=2;
         this.zoomIn=new Sprite();
         this.zoomIn.x=0;
         this.zoomIn.y=14;
         this.zoomIn.addChild(_loc2_);
         this.zoomIn.addEventListener(MouseEvent.CLICK,this.nyrobede);
         addChild(this.zoomIn);
         return;
      }

      private function pikohuz(param1:MouseEvent) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         if(this.bakulysy())
         {
            this.luzaricy.dispatch(--this.bymy);
            this.zoomOut.transform.colorTransform=this.bakulysy()?this.ferahyrem:this.cowu;
         }
         return;
      }

      private function bakulysy() : Boolean {
         return this.bymy>0;
      }

      private function nyrobede(param1:MouseEvent) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         if(this.fygijar())
         {
            this.luzaricy.dispatch(++this.bymy);
            this.zoomIn.transform.colorTransform=this.fygijar()?this.ferahyrem:this.cowu;
         }
         return;
      }

      private function fygijar() : Boolean {
         return this.bymy<this.sylupuf-1;
      }

      private function gujuryz() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.zoomIn.transform.colorTransform=this.fygijar()?this.ferahyrem:this.cowu;
         this.zoomOut.transform.colorTransform=this.bakulysy()?this.ferahyrem:this.cowu;
         return;
      }
   }
[/CLASS]
}