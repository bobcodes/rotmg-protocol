package fyvanod
{
[CLASS305]   import tysenyzy.Zovisis;
   import wynuqehej.PetPanel;
   import qypupet.Tuhyfutos;
   import bocak.Larijop;
   import dutes.Zevazogo;
   import bocak.Zojah;
   import bocak.Wugowecuq;
   import bocak.Wuqez;
   import kirofyny.Hehuf;
   import pogefeqeh.Wahovy;
   import flash.events.MouseEvent;
   import qypupet.Vuravipyg;
   import wynuqehej.Necudyt;
   import kozaligov.Cinijyt;
   import pigeguwo.Jazyv;


   public class Sewy extends Zovisis
   {
      public function Sewy() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:PetPanel;

      public var gadavuf:Tuhyfutos;

      public var towuh:Larijop;

      public var showToolTip:Zevazogo;

      public var sawu:Zojah;

      public var pyqogyben:Wugowecuq;

      public var lytydohod:Wuqez;

      public var lyhog:Hehuf;

      public var viqelo:Wahovy;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.setState(this.nyteham());
         this.view.nanopemek.add(this.tuwus);
         this.view.mosyq.addEventListener(MouseEvent.CLICK,this.onButtonClick);
         this.view.byromu.addEventListener(MouseEvent.CLICK,this.jytumet);
         this.view.zasu.addEventListener(MouseEvent.CLICK,this.onButtonClick);
         this.lytydohod.add(this.somekofa);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.byromu.removeEventListener(MouseEvent.CLICK,this.jytumet);
         return;
      }

      private function jytumet(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.viqelo.map(Vuravipyg).zoru(this.view.petVO);
         this.lyhog.dispatch(this.viqelo.getInstance(Necudyt));
         return;
      }

      private function somekofa() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Vuravipyg = this.gadavuf.kodu();
         this.view.nom(!_loc1_);
         return;
      }

      private function nyteham() : uint {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.werol())
         {
            return Cinijyt.kyzikyw;
         }
         return Cinijyt.vityco;
      }

      protected function onButtonClick(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.werol())
         {
            this.sawu.dispatch(this.view.petVO.lecafis());
         }
         else
         {
            this.pyqogyben.dispatch(this.view.petVO.lecafis());
         }
         return;
      }

      private function tuwus(param1:Jazyv) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.showToolTip.dispatch(param1);
         return;
      }

      private function werol() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return this.gadavuf.kodu()?this.gadavuf.kodu().lecafis()==this.view.petVO.lecafis():false;
      }
   }
[/CLASS]
}