package haj
{
   import tytojonib.Kyjefe;
   import horitu.PetPanel;
   import fanij.Namejaja;
   import jyhyzujyw.Zisof;
   import pomujukir.Cirumy;
   import jyhyzujyw.Jyza;
   import jyhyzujyw.Lozusi;
   import jyhyzujyw.Bagebok;
   import cizagamym.Boquzojul;
   import dyca.Mes;
   import flash.events.MouseEvent;
   import fanij.Cun;
   import horitu.Zaqad;
   import fypeba.Rikuko;
   import mavew.Qyryl;


   public class Kyh extends Kyjefe
   {
      public function Kyh() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:PetPanel;

      public var buguzunag:Namejaja;

      public var fucel:Zisof;

      public var showToolTip:Cirumy;

      public var qinubelyk:Jyza;

      public var vifuhu:Lozusi;

      public var bapype:Bagebok;

      public var ridecy:Boquzojul;

      public var difas:Mes;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.setState(this.vudebity());
         this.view.fykig.add(this.tokyji);
         this.view.gynan.addEventListener(MouseEvent.CLICK,this.onButtonClick);
         this.view.koka.addEventListener(MouseEvent.CLICK,this.tanimu);
         this.view.dafatoh.addEventListener(MouseEvent.CLICK,this.onButtonClick);
         this.bapype.add(this.puhujoryw);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.koka.removeEventListener(MouseEvent.CLICK,this.tanimu);
         return;
      }

      private function tanimu(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.difas.map(Cun).pylo(this.view.petVO);
         this.ridecy.dispatch(this.difas.getInstance(Zaqad));
         return;
      }

      private function puhujoryw() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Cun = this.buguzunag.tigosulo();
         this.view.fogohadap(!_loc1_);
         return;
      }

      private function vudebity() : uint {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.qew())
         {
            return Rikuko.popon;
         }
         return Rikuko.jumov;
      }

      protected function onButtonClick(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.qew())
         {
            this.qinubelyk.dispatch(this.view.petVO.lepuve());
         }
         else
         {
            this.vifuhu.dispatch(this.view.petVO.lepuve());
         }
         return;
      }

      private function tokyji(param1:Qyryl) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.showToolTip.dispatch(param1);
         return;
      }

      private function qew() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return this.buguzunag.tigosulo()?this.buguzunag.tigosulo().lepuve()==this.view.petVO.lepuve():false;
      }
   }

}