package jego
{
[CLASS929]   import flash.display.Sprite;
   import flash.display.Shape;
   import pudev.Capitu;
   import totuhare.Zufi;
   import totuhare.AppendingLineBuilder;
   import flash.display.Bitmap;
   import fyvanod.Sal;
   import flash.geom.ColorTransform;
   import flash.events.Event;
   import kozaligov.Bapipe;


   public class Sycuki extends Sprite
   {
      public function Sycuki() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.fadocu=Bapipe.luryr(46,5526612,0,false,true);
         this.qyqafutiz=Bapipe.luryr(40,5526612,3,false,true);
         this.bg=Bapipe.luryr(46,5526612,0,true,false);
         this.ror=Bapipe.horymal();
         this.zyp=new Zufi();
         this.bekyw=Bapipe.kosat(16777103,100);
         this.muhoso=new AppendingLineBuilder();
         this.cawiluz=new Sprite();
         this.vun=new Bitmap();
         super();
         this.mipuguc();
         this.bekyw.textChanged.add(this.dilak);
         this.ror.textChanged.add(this.dilak);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         return;
      }

      private var fadocu:Shape;

      private var qyqafutiz:Shape;

      private var bg:Shape;

      private var ror:Capitu;

      private var zyp:Zufi;

      private var bekyw:Capitu;

      private var muhoso:AppendingLineBuilder;

      protected var cawiluz:Sprite;

      protected var vun:Bitmap;

      protected var hucuposeg:Sal;

      protected var itemId:int = -1;

      public function setTitle(param1:String, param2:Object) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.zyp.setParams(param1,param2);
         this.ror.setStringBuilder(this.zyp);
         return;
      }

      public function noz(param1:String, param2:Object) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.muhoso.clear();
         this.muhoso.pushParams(param1,param2);
         this.bekyw.setStringBuilder(this.muhoso);
         return;
      }

      public function kywi(param1:Boolean) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.fadocu.visible=!param1;
         var _loc2_:int = param1?40:46;
         var _loc3_:int = param1?3:0;
         this.bg.graphics.clear();
         this.bg.graphics.beginFill(4605510);
         this.bg.graphics.drawRoundRect(0,_loc3_,_loc2_,_loc2_,16,16);
         this.bg.x=(100-_loc2_)*0.5;
         return;
      }

      public function qidyjuso(param1:Boolean) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:ColorTransform = this.qyqafutiz.transform.colorTransform;
         _loc2_.color=param1?16777103:5526612;
         this.qyqafutiz.transform.colorTransform=_loc2_;
         return;
      }

      protected function pivub() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.cawiluz.x=0;
         this.cawiluz.y=0;
         this.vun.x=(100-this.vun.width)*0.5;
         this.vun.y=(46-this.vun.height)*0.5;
         return;
      }

      protected function cosala() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.hucuposeg.x=(100-this.hucuposeg.width)*0.5;
         this.hucuposeg.y=(46-this.hucuposeg.height)*0.5;
         return;
      }

      protected function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         removeEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         this.bekyw.textChanged.remove(this.dilak);
         this.ror.textChanged.remove(this.dilak);
         return;
      }

      private function mipuguc() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.cawiluz.addChild(this.vun);
         addChild(this.bg);
         addChild(this.qyqafutiz);
         addChild(this.fadocu);
         addChild(this.ror);
         addChild(this.bekyw);
         addChild(this.cawiluz);
         return;
      }

      private function dilak() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.bekyw.y=this.ror.y+this.ror.height-1;
         return;
      }
   }
[/CLASS]
}