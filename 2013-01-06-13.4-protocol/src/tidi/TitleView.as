package tidi
{
[CLASS461]   import flash.display.Sprite;
   import qilarag.Boqurot;
   import pudev.Capitu;
   import rymuhuduh.Jadyluf;
   import vinirudel.Wicide;
   import tinava.Dab;
   import flash.text.TextFieldAutoSize;
   import totuhare.Zufi;
   import haqakel.Kefyfa;
   import flash.filters.DropShadowFilter;
   import totuhare.Javo;
   import rymuhuduh.Jitohu;
   import rymuhuduh.Kofyvewil;
   import qilarag.Sinutuci;
   import com.company.assembleegameclient.ui.Ryrigyp;


   public class TitleView extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function TitleView() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.tuzudot=this.pajuhevuc();
         this.byhup=new Dab();
         super();
         addChild(new Jitohu());
         addChild(new Kofyvewil());
         addChild(new doc());
         addChild(this.tuzudot);
         addChild(new Sinutuci());
         this.suwim();
         addChild(new Ryrigyp());
         return;
      }

      static var doc:Class = Bedafagu;

      public static const canov:Number = 589.45;

      public var cotag:Boqurot;

      private var luficyf:Capitu;

      private var zoc:Capitu;

      private var tuzudot:Jadyluf;

      private var data:Wicide;

      public var rulejisew:Dab;

      public var zedamilib:Dab;

      public var dedizyru:Dab;

      public var gupicego:Dab;

      public var dysec:Dab;

      public var sinotosy:Dab;

      public var lawobe:Dab;

      public var byhup:Dab;

      private function pajuhevuc() : Jadyluf {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc1_:Boqurot = Qifucivem.vutok();
         var _loc2_:Boqurot = Qifucivem.tideho();
         var _loc3_:Boqurot = Qifucivem.sel();
         var _loc4_:Boqurot = Qifucivem.gisuka();
         this.cotag=Qifucivem.fityv();
         this.rulejisew=_loc1_.zokokof;
         this.zedamilib=_loc2_.zokokof;
         this.dedizyru=_loc3_.zokokof;
         this.gupicego=_loc4_.zokokof;
         this.dysec=this.cotag.zokokof;
         var _loc5_:Jadyluf = new Jadyluf();
         _loc5_.tisypure(_loc1_,Jadyluf.CENTER);
         _loc5_.tisypure(_loc2_,Jadyluf.LEFT);
         _loc5_.tisypure(this.cotag,Jadyluf.LEFT);
         _loc5_.tisypure(_loc3_,Jadyluf.RIGHT);
         _loc5_.tisypure(_loc4_,Jadyluf.RIGHT);
         return _loc5_;
      }

      private function suwim() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.luficyf=this.makeText().setHTML(true).setAutoSize(TextFieldAutoSize.LEFT).setVerticalAlign(Capitu.MIDDLE);
         this.luficyf.y=canov;
         addChild(this.luficyf);
         this.zoc=this.makeText().setAutoSize(TextFieldAutoSize.RIGHT).setVerticalAlign(Capitu.MIDDLE);
         this.zoc.setStringBuilder(new Zufi().setParams(Kefyfa.jav));
         this.zoc.filters=[new DropShadowFilter(0,0,0)];
         this.zoc.x=800;
         this.zoc.y=canov;
         addChild(this.zoc);
         return;
      }

      public function makeText() : Capitu {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Capitu = new Capitu().setSize(12).setColor(8355711);
         _loc1_.filters=[new DropShadowFilter(0,0,0)];
         return _loc1_;
      }

      public function initialize(param1:Wicide) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.data=param1;
         this.nedo();
         this.nihova();
         return;
      }

      private function nedo() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.luficyf.setStringBuilder(new Javo(this.data.bazov));
         return;
      }

      private function nihova() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.byhup.dispatch();
         return;
      }

      private function zune() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Boqurot = Qifucivem.kudicyzu();
         this.tuzudot.tisypure(_loc1_,Jadyluf.RIGHT);
         this.lawobe=_loc1_.zokokof;
         return;
      }

      private function rezowyg() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Boqurot = Qifucivem.nylupez();
         this.tuzudot.tisypure(_loc1_,Jadyluf.RIGHT);
         this.sinotosy=_loc1_.zokokof;
         return;
      }

      public function gym(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1)
         {
            this.cotag.activate();
         }
         else
         {
            this.cotag.deactivate();
         }
         return;
      }
   }
[/CLASS]
}