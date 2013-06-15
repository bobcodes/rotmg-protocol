package tilo
{
   import flash.display.Sprite;
   import flash.display.DisplayObject;
   import hivysif.Guzowoja;
   import com.company.assembleegameclient.ui.Tivinu;
   import mukyrosu.Qanyduk;
   import flash.events.Event;
   import jediwip.Kybidu;
   import flash.text.TextFormatAlign;
   import komi.Vibemod;
   import hyjabu.Rubib;
   import qykifavol.Rulavowaz;
   import flash.events.MouseEvent;


   public class Wegyqide extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Wegyqide() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         return;
      }

      private static const dylezow:int = 8;

      private static const curymemi:int = 120;

      private static const vafe:int = 16;

      private static const vyker:int = 546;

      private static const kas:int = 416;

      private static const jegi:int = 368;

      private static const qewuvalu:int = 164;

      private static const tuvagahej:int = 210;

      private const background:DisplayObject = this.wutas();

      private const title:Guzowoja = this.haq();

      private const mibalas:Guzowoja = this.jikev();

      private const ladynuj:Guzowoja = this.qaheluw();

      private const close:Tivinu = this.dozal();

      public const closed:Qanyduk = new Rulavowaz(this.close,MouseEvent.CLICK);

      private function onAddedToStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         removeEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         x=(stage.stageWidth-width)/2;
         y=(stage.stageHeight-height)/2;
         return;
      }

      public function setTitle(param1:String) : Wegyqide {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.title.setStringBuilder(new Kybidu().setParams(param1));
         return this;
      }

      public function setBody(param1:String, param2:String) : Wegyqide {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.mibalas.setStringBuilder(new Kybidu().setParams(param1));
         this.ladynuj.setStringBuilder(new Kybidu().setParams(param2));
         return this;
      }

      private function wutas() : DisplayObject {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Jet = new Jet();
         addChild(_loc1_);
         return _loc1_;
      }

      private function haq() : Guzowoja {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Guzowoja = null;
         _loc1_=new Guzowoja().setSize(18).setColor(11974326).setTextWidth(vyker).setAutoSize(TextFormatAlign.CENTER).setBold(true);
         _loc1_.y=dylezow;
         addChild(_loc1_);
         return _loc1_;
      }

      private function jikev() : Guzowoja {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Guzowoja = null;
         _loc1_=new Guzowoja().setSize(14).setColor(14864077).setTextWidth(kas).setAutoSize(TextFormatAlign.CENTER).setBold(true);
         _loc1_.x=(vyker-kas)*0.5;
         _loc1_.y=qewuvalu;
         addChild(_loc1_);
         return _loc1_;
      }

      private function qaheluw() : Guzowoja {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Guzowoja = new Guzowoja().setSize(14).setColor(10914439).setTextWidth(kas).setAutoSize(TextFormatAlign.CENTER);
         _loc1_.x=(vyker-kas)*0.5;
         _loc1_.y=tuvagahej;
         addChild(_loc1_);
         return _loc1_;
      }

      private function dozal() : Tivinu {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Tivinu = new Tivinu(vafe,Vibemod.CLOSE,curymemi);
         _loc1_.textChanged.addOnce(this.hokicewa);
         _loc1_.y=jegi;
         addChild(_loc1_);
         return _loc1_;
      }

      private function hokicewa() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         new Rubib().layout(vyker,this.close);
         return;
      }
   }

}