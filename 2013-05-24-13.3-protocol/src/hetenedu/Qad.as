package hetenedu
{
   import flash.display.Sprite;
   import flash.geom.ColorTransform;
   import tulunyno.Hugyqufyq;
   import com.company.util.AssetLibrary;
   import flash.display.BitmapData;
   import flash.display.Bitmap;
   import flash.events.MouseEvent;


   public class Qad extends Sprite
   {
      public function Qad() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         this.ruba=0;
         this.nanema();
         this.lopofal();
         this.myru();
         return;
      }

      private const nanibaz:ColorTransform = new ColorTransform(0.5,0.5,0.5);

      private const notypub:ColorTransform = new ColorTransform(1,1,1);

      public const musy:Hugyqufyq = new Hugyqufyq(int);

      private var zoomOut:Sprite;

      private var zoomIn:Sprite;

      private var wanarymu:int;

      private var ruba:int;

      public function nehuve() : int {
         return this.ruba;
      }

      public function cak(param1:int) : int {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.wanarymu==0)
         {
            return this.ruba;
         }
         if(param1<0)
         {
            param1=0;
         }
         else
         {
            if(param1>=this.wanarymu-1)
            {
               param1=this.wanarymu-1;
            }
         }
         this.ruba=param1;
         this.myru();
         return this.ruba;
      }

      public function hokihobud(param1:int) : int {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.wanarymu=param1;
         if(this.ruba>=this.wanarymu)
         {
            this.ruba=this.wanarymu-1;
         }
         this.myru();
         return this.wanarymu;
      }

      private function nanema() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:BitmapData = AssetLibrary.jeqycu("lofiInterface",54);
         var _loc2_:Bitmap = new Bitmap(_loc1_);
         _loc2_.scaleX=2;
         _loc2_.scaleY=2;
         this.zoomOut=new Sprite();
         this.zoomOut.x=0;
         this.zoomOut.y=4;
         this.zoomOut.addChild(_loc2_);
         this.zoomOut.addEventListener(MouseEvent.CLICK,this.hyf);
         addChild(this.zoomOut);
         return;
      }

      private function lopofal() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Bitmap = null;
         var _loc1_:BitmapData = AssetLibrary.jeqycu("lofiInterface",55);
         _loc2_=new Bitmap(_loc1_);
         _loc2_.scaleX=2;
         _loc2_.scaleY=2;
         this.zoomIn=new Sprite();
         this.zoomIn.x=0;
         this.zoomIn.y=14;
         this.zoomIn.addChild(_loc2_);
         this.zoomIn.addEventListener(MouseEvent.CLICK,this.fygo);
         addChild(this.zoomIn);
         return;
      }

      private function hyf(param1:MouseEvent) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         if(this.picufifi())
         {
            this.musy.dispatch(--this.ruba);
            this.zoomOut.transform.colorTransform=this.picufifi()?this.notypub:this.nanibaz;
         }
         return;
      }

      private function picufifi() : Boolean {
         return this.ruba>0;
      }

      private function fygo(param1:MouseEvent) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         if(this.dijed())
         {
            this.musy.dispatch(++this.ruba);
            this.zoomIn.transform.colorTransform=this.dijed()?this.notypub:this.nanibaz;
         }
         return;
      }

      private function dijed() : Boolean {
         return this.ruba<this.wanarymu-1;
      }

      private function myru() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.zoomIn.transform.colorTransform=this.dijed()?this.notypub:this.nanibaz;
         this.zoomOut.transform.colorTransform=this.picufifi()?this.notypub:this.nanibaz;
         return;
      }
   }

}