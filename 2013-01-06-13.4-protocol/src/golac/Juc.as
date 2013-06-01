package golac
{
[CLASS179]   import flash.display.Sprite;
   import flash.display.DisplayObject;
   import pudev.Capitu;
   import com.company.assembleegameclient.ui.Cid;
   import tinava.Dab;
   import flash.events.Event;
   import totuhare.Zufi;
   import flash.text.TextFormatAlign;
   import haqakel.Kefyfa;
   import rorijof.Tysen;
   import zehus.Kelapu;
   import flash.events.MouseEvent;


   public class Juc extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Juc() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         return;
      }

      private static const rofywe:int = 8;

      private static const fob:int = 120;

      private static const buru:int = 16;

      private static const lasewy:int = 546;

      private static const mebu:int = 416;

      private static const syvadeby:int = 368;

      private static const lawe:int = 164;

      private static const herujuri:int = 210;

      private const background:DisplayObject = this.fawug();

      private const title:Capitu = this.jewyry();

      private const ned:Capitu = this.juhyciqa();

      private const dyjovaz:Capitu = this.qepipepuh();

      private const close:Cid = this.rafyte();

      public const closed:Dab = new Kelapu(this.close,MouseEvent.CLICK);

      private function onAddedToStage(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         removeEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         x=(stage.stageWidth-width)/2;
         y=(stage.stageHeight-height)/2;
         return;
      }

      public function setTitle(param1:String) : Juc {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.title.setStringBuilder(new Zufi().setParams(param1));
         return this;
      }

      public function setBody(param1:String, param2:String) : Juc {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.ned.setStringBuilder(new Zufi().setParams(param1));
         this.dyjovaz.setStringBuilder(new Zufi().setParams(param2));
         return this;
      }

      private function fawug() : DisplayObject {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Syc = new Syc();
         addChild(_loc1_);
         return _loc1_;
      }

      private function jewyry() : Capitu {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Capitu = null;
         _loc1_=new Capitu().setSize(18).setColor(11974326).setTextWidth(lasewy).setAutoSize(TextFormatAlign.CENTER).setBold(true);
         _loc1_.y=rofywe;
         addChild(_loc1_);
         return _loc1_;
      }

      private function juhyciqa() : Capitu {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Capitu = null;
         _loc1_=new Capitu().setSize(14).setColor(14864077).setTextWidth(mebu).setAutoSize(TextFormatAlign.CENTER).setBold(true);
         _loc1_.x=(lasewy-mebu)*0.5;
         _loc1_.y=lawe;
         addChild(_loc1_);
         return _loc1_;
      }

      private function qepipepuh() : Capitu {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Capitu = new Capitu().setSize(14).setColor(10914439).setTextWidth(mebu).setAutoSize(TextFormatAlign.CENTER);
         _loc1_.x=(lasewy-mebu)*0.5;
         _loc1_.y=herujuri;
         addChild(_loc1_);
         return _loc1_;
      }

      private function rafyte() : Cid {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Cid = new Cid(buru,Kefyfa.CLOSE,fob);
         _loc1_.textChanged.addOnce(this.poby);
         _loc1_.y=syvadeby;
         addChild(_loc1_);
         return _loc1_;
      }

      private function poby() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         new Tysen().layout(lasewy,this.close);
         return;
      }
   }
[/CLASS]
}