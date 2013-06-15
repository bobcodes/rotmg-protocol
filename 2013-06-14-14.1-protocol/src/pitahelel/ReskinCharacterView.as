package pitahelel
{
   import flash.display.Sprite;
   import fysy.Caj;
   import wenono.Nuri;
   import bemav.Sigul;
   import hivysif.Guzowoja;
   import com.company.assembleegameclient.ui.Tivinu;
   import mukyrosu.Qanyduk;
   import flash.text.TextFieldAutoSize;
   import jediwip.Kybidu;
   import komi.Vibemod;
   import __AS3__.vec.Vector;
   import flash.display.DisplayObject;
   import flash.display.LineScaleMode;
   import flash.display.CapsStyle;
   import flash.display.JointStyle;
   import hyjabu.Rubib;
   import qykifavol.Rulavowaz;
   import flash.events.MouseEvent;


   public class ReskinCharacterView extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function ReskinCharacterView() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private static const niqo:int = 10;

      private static const vyker:int = Caj.WIDTH+niqo*2;

      private static const curymemi:int = 120;

      private static const vafe:int = 16;

      private static const qyzekaq:int = 40;

      private static const vubewymuz:int = 27;

      private const kepu:Nuri = this.jipyfe();

      private const background:Sigul = this.wutas();

      private const title:Guzowoja = this.haq();

      private const list:Caj = this.hoqiwyh();

      private const cancel:Tivinu = this.dyr();

      private const select:Tivinu = this.syfuzopos();

      public const fil:Qanyduk = new Rulavowaz(this.cancel,MouseEvent.CLICK);

      public const selected:Qanyduk = new Rulavowaz(this.select,MouseEvent.CLICK);

      public var mym:int;

      private function jipyfe() : Nuri {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Nuri = new Nuri();
         _loc1_.complete.add(this.fosilul);
         return _loc1_;
      }

      private function wutas() : Sigul {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Sigul = new Sigul();
         addChild(_loc1_);
         return _loc1_;
      }

      private function haq() : Guzowoja {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Guzowoja = new Guzowoja().setSize(18).setColor(11974326).setTextWidth(vyker);
         _loc1_.setAutoSize(TextFieldAutoSize.CENTER).setBold(true);
         _loc1_.setStringBuilder(new Kybidu().setParams(Vibemod.movydipic));
         _loc1_.y=niqo*0.5;
         addChild(_loc1_);
         return _loc1_;
      }

      private function hoqiwyh() : Caj {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Caj = null;
         _loc1_=new Caj();
         _loc1_.x=niqo;
         _loc1_.y=niqo+vubewymuz;
         addChild(_loc1_);
         return _loc1_;
      }

      private function dyr() : Tivinu {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Tivinu = new Tivinu(vafe,Vibemod.nivem,curymemi);
         addChild(_loc1_);
         this.kepu.push(_loc1_.textChanged);
         return _loc1_;
      }

      private function syfuzopos() : Tivinu {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Tivinu = new Tivinu(vafe,Vibemod.sobatidip,curymemi);
         addChild(_loc1_);
         this.kepu.push(_loc1_.textChanged);
         return _loc1_;
      }

      public function padijuby(param1:Vector.<DisplayObject>) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.list.setItems(param1);
         this.qyl();
         this.decihob();
         this.fosilul();
         return;
      }

      private function qyl() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.mym=Math.min(Caj.HEIGHT+niqo,this.list.bika());
         this.mym=this.mym+(qyzekaq+niqo*2+vubewymuz);
         return;
      }

      private function decihob() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.background.draw(vyker,this.mym);
         this.background.graphics.lineStyle(2,5987163,1,false,LineScaleMode.NONE,CapsStyle.NONE,JointStyle.BEVEL);
         this.background.graphics.moveTo(1,vubewymuz);
         this.background.graphics.lineTo(vyker-1,vubewymuz);
         return;
      }

      private function fosilul() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:Rubib = new Rubib();
         _loc1_.layout(vyker,this.cancel,this.select);
         this.cancel.y=this.select.y=this.mym-qyzekaq;
         return;
      }
   }

}