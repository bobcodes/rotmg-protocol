package fyvanod
{
[CLASS282]   import flash.display.Sprite;
   import tinava.Dab;
   import jego.Jilacodor;
   import qypupet.Sikyvuvus;
   import qypupet.Vuravipyg;
   import kozaligov.Bapipe;


   public class PetFuser extends Sprite
   {
      public function PetFuser() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.nos=new Jilacodor();
         this.moni=Bapipe.sehiri();
         this.nijarymow=Bapipe.relylad();
         super();
         this.nos.muranotu=true;
         addChild(this.nos);
         addChild(this.moni);
         addChild(this.nijarymow);
         this.nos.zate.addOnce(this.gukibolyc);
         this.nijarymow.zate.addOnce(this.gudodyb);
         return;
      }

      public const zate:Dab = new Dab(String);

      private var nos:Jilacodor;

      private var moni:Sosoqew;

      private var nijarymow:Jilacodor;

      private var state:Sikyvuvus;

      public function initialize(param1:Sikyvuvus) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.state=param1;
         this.sukymu(this.state.jaq,Sikyvuvus.LEFT);
         if(this.state.gujudunyt)
         {
            this.sukymu(this.state.gujudunyt,Sikyvuvus.RIGHT);
         }
         this.bijyzeqez();
         return;
      }

      public function sukymu(param1:Vuravipyg, param2:String) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Jilacodor = null;
         if(param1)
         {
            _loc3_=param2==Sikyvuvus.LEFT?this.nos:this.nijarymow;
            _loc3_.sukymu(param1);
         }
         return;
      }

      private function gukibolyc() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.zate.dispatch(Sikyvuvus.LEFT);
         return;
      }

      private function gudodyb() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.zate.dispatch(Sikyvuvus.RIGHT);
         return;
      }

      public function bijyzeqez() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.state.kizu())
         {
            this.moni.qidyjuso(true);
            this.nijarymow.qidyjuso(true);
            this.nos.qidyjuso(true);
         }
         else
         {
            this.nijarymow.qidyjuso(this.state.gujudunyt==null);
            this.nos.qidyjuso(this.state.jaq==null);
            this.moni.qidyjuso(false);
         }
         return;
      }
   }
[/CLASS]
}