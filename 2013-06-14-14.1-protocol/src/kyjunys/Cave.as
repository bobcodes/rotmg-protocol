package kyjunys
{
   import flash.display.Sprite;
   import flash.display.Shape;
   import hivysif.Guzowoja;
   import jediwip.Kybidu;
   import jediwip.AppendingLineBuilder;
   import flash.display.Bitmap;
   import haj.Linocele;
   import flash.geom.ColorTransform;
   import flash.events.Event;
   import fypeba.Zikorur;


   public class Cave extends Sprite
   {
      public function Cave() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.lyfyzeta=Zikorur.kun(46,5526612,0,false,true);
         this.lyj=Zikorur.kun(40,5526612,3,false,true);
         this.bg=Zikorur.kun(46,5526612,0,true,false);
         this.vylere=Zikorur.hafigozyc();
         this.gocafe=new Kybidu();
         this.cibo=Zikorur.rov(16777103,100);
         this.vywug=new AppendingLineBuilder();
         this.soqugarol=new Sprite();
         this.rijitafut=new Bitmap();
         super();
         this.jifajenuj();
         this.cibo.textChanged.add(this.hagacely);
         this.vylere.textChanged.add(this.hagacely);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         return;
      }

      private var lyfyzeta:Shape;

      private var lyj:Shape;

      private var bg:Shape;

      private var vylere:Guzowoja;

      private var gocafe:Kybidu;

      private var cibo:Guzowoja;

      private var vywug:AppendingLineBuilder;

      protected var soqugarol:Sprite;

      protected var rijitafut:Bitmap;

      protected var dul:Linocele;

      protected var itemId:int = -1;

      public function setTitle(param1:String, param2:Object) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.gocafe.setParams(param1,param2);
         this.vylere.setStringBuilder(this.gocafe);
         return;
      }

      public function socec(param1:String, param2:Object) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.vywug.clear();
         this.vywug.pushParams(param1,param2);
         this.cibo.setStringBuilder(this.vywug);
         return;
      }

      public function qaz(param1:Boolean) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         this.lyfyzeta.visible=!param1;
         var _loc2_:int = param1?40:46;
         var _loc3_:int = param1?3:0;
         this.bg.graphics.clear();
         this.bg.graphics.beginFill(4605510);
         this.bg.graphics.drawRoundRect(0,_loc3_,_loc2_,_loc2_,16,16);
         this.bg.x=(100-_loc2_)*0.5;
         return;
      }

      public function vicy(param1:Boolean) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:ColorTransform = this.lyj.transform.colorTransform;
         _loc2_.color=param1?16777103:5526612;
         this.lyj.transform.colorTransform=_loc2_;
         return;
      }

      protected function ninuzi() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.soqugarol.x=0;
         this.soqugarol.y=0;
         this.rijitafut.x=(100-this.rijitafut.width)*0.5;
         this.rijitafut.y=(46-this.rijitafut.height)*0.5;
         return;
      }

      protected function kamyk() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.dul.x=(100-this.dul.width)*0.5;
         this.dul.y=(46-this.dul.height)*0.5;
         return;
      }

      protected function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         removeEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         this.cibo.textChanged.remove(this.hagacely);
         this.vylere.textChanged.remove(this.hagacely);
         return;
      }

      private function jifajenuj() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.soqugarol.addChild(this.rijitafut);
         addChild(this.bg);
         addChild(this.lyj);
         addChild(this.lyfyzeta);
         addChild(this.vylere);
         addChild(this.cibo);
         addChild(this.soqugarol);
         return;
      }

      private function hagacely() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.cibo.y=this.vylere.y+this.vylere.height-1;
         return;
      }
   }

}