package horitu
{
   import fytalis.Panel;
   import sojakil.Tojytijib;
   import qykifavol.Hydydyqas;
   import flash.display.Sprite;
   import fanij.Cun;
   import mukyrosu.Qanyduk;
   import hivysif.Guzowoja;
   import flash.display.Bitmap;
   import komi.Vibemod;
   import fypeba.Rikuko;
   import jediwip.Kybidu;
   import flash.events.MouseEvent;
   import haj.Cihoni;
   import com.company.assembleegameclient.game.Pajemiz;
   import mavew.Qyryl;
   import fypeba.Zikorur;


   public class PetPanel extends Panel
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function PetPanel(param1:Pajemiz, param2:Cun) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.nabuz=new Sprite();
         super(param1);
         this.petVO=param2;
         this.nesomiwuh=new Hydydyqas(this.nabuz,MouseEvent.MOUSE_OVER);
         this.nesomiwuh.add(this.bebavub);
         this.niraco=param2.vobydozid();
         this.jifajenuj();
         this.lobola();
         this.sal();
         this.titeralyh();
         return;
      }

      private static const voquhubi:int = 16;

      private static const zumin:int = 6;

      private static const jijonafi:int = 5;

      private static function ciqo(param1:Tojytijib) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         param1.y=HEIGHT-param1.height-4;
         return;
      }

      public var nesomiwuh:Hydydyqas;

      public var nabuz:Sprite;

      public var gynan:Tojytijib;

      public var koka:Tojytijib;

      public var dafatoh:Tojytijib;

      public var petVO:Cun;

      public const fykig:Qanyduk = new Qanyduk(Qyryl);

      private const refesydy:Guzowoja = Zikorur.guta(16777215,16,true);

      private const ganemubip:Guzowoja = Zikorur.guta(11974326,12,false);

      private var niraco:Bitmap;

      private function titeralyh() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.gynan=this.wemisusis(Vibemod.ryhum);
         this.koka=this.wemisusis(Vibemod.fyr);
         this.dafatoh=this.wemisusis(Vibemod.zibyhune);
         this.qolycis();
         return;
      }

      private function wemisusis(param1:String) : Tojytijib {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Tojytijib = new Tojytijib(voquhubi,param1);
         addChild(_loc2_);
         return _loc2_;
      }

      public function setState(param1:uint) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.fogohadap(param1==Rikuko.jumov);
         return;
      }

      public function fogohadap(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.gynan.visible=param1;
         this.koka.visible=param1;
         this.dafatoh.visible=!param1;
         return;
      }

      private function jifajenuj() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.nabuz.addChild(this.niraco);
         addChild(this.nabuz);
         addChild(this.refesydy);
         addChild(this.ganemubip);
         return;
      }

      private function sal() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.refesydy.setStringBuilder(new Kybidu().setParams(this.petVO.getName()));
         this.ganemubip.setStringBuilder(new Kybidu().setParams(this.petVO.laj()));
         return;
      }

      private function lobola() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.niraco.x=4;
         this.niraco.y=-3;
         this.refesydy.x=58;
         this.refesydy.y=23;
         this.ganemubip.x=58;
         this.ganemubip.y=35;
         return;
      }

      private function qolycis() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.sorepun();
         this.redyry();
         this.cym();
         return;
      }

      private function sorepun() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.gynan.x=zumin;
         ciqo(this.gynan);
         return;
      }

      private function redyry() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.koka.x=WIDTH-this.koka.width-zumin-jijonafi;
         ciqo(this.koka);
         return;
      }

      private function cym() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.dafatoh.x=(WIDTH-this.dafatoh.width)/2;
         ciqo(this.dafatoh);
         return;
      }

      private function bebavub(param1:MouseEvent) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Cihoni = new Cihoni(this.petVO);
         _loc2_.pityvigim(this);
         this.fykig.dispatch(_loc2_);
         return;
      }
   }

}