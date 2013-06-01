package fyvanod
{
[CLASS257]   import flash.display.Sprite;
   import tinava.Dab;
   import jego.Jilacodor;
   import jego.Ludiporos;
   import qypupet.Sikyvuvus;
   import qypupet.Vuravipyg;
   import kozaligov.Bapipe;


   public class PetFeeder extends Sprite
   {
      public function PetFeeder() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.nos=new Jilacodor();
         this.moni=Bapipe.sehiri();
         this.nijarymow=Bapipe.wocob();
         super();
         addChild(this.nos);
         addChild(this.moni);
         addChild(this.nijarymow);
         this.nos.zate.addOnce(this.lewema);
         this.nijarymow.kucijuh.add(this.monipafo);
         this.nijarymow.dyg.add(this.zucelyrok);
         return;
      }

      public const zate:Dab = new Dab();

      public const rys:Dab = new Dab(Boolean,Vuravipyg);

      public const kuviveze:Dab = new Dab(Vuravipyg);

      private var nos:Jilacodor;

      private var moni:Sosoqew;

      private var nijarymow:Ludiporos;

      private var state:Sikyvuvus;

      public function initialize(param1:Sikyvuvus) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.state=param1;
         this.sukymu(this.state.jaq);
         this.update();
         return;
      }

      public function sukymu(param1:Vuravipyg) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.nos.sukymu(param1);
         if(param1)
         {
            this.kuviveze.dispatch(param1);
         }
         return;
      }

      public function siwuj() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.state.qorecotym=-1;
         this.state.dede=-1;
         this.state.sic=-1;
         this.nijarymow.rajoge();
         this.update();
         return;
      }

      private function zucelyrok() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.state.qorecotym=-1;
         this.state.dede=-1;
         this.state.sic=-1;
         this.update();
         return;
      }

      private function monipafo(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.state.qorecotym=param1;
         this.update();
         return;
      }

      private function update() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.bijyzeqez();
         this.rys.dispatch(this.state.lojicoh(),this.state.jaq);
         return;
      }

      private function lewema() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.zate.dispatch();
         return;
      }

      public function bijyzeqez() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.state.lojicoh())
         {
            this.moni.qidyjuso(true);
            this.nijarymow.qidyjuso(true);
            this.nos.qidyjuso(true);
         }
         else
         {
            this.nijarymow.qidyjuso(this.state.qorecotym==-1);
            this.nos.qidyjuso(this.state.jaq==null);
            this.moni.qidyjuso(false);
         }
         return;
      }

      public function vajajozuw(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.nijarymow.vajajozuw(param1);
         this.nos.vajajozuw(param1);
         if(param1)
         {
            this.moni.qidyjuso(false);
            this.nijarymow.qidyjuso(false);
            this.nos.qidyjuso(false);
         }
         else
         {
            this.update();
         }
         return;
      }
   }
[/CLASS]
}