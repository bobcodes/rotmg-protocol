package coh
{
   import flash.display.Sprite;
   import tulunyno.Hugyqufyq;
   import hif.Qynaj;
   import zoroc.Taqosohuf;
   import zoroc.Bezuco;
   import qucuqesif.Rasoqymi;


   public class PetFuser extends Sprite
   {
      public function PetFuser() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.quhy=new Qynaj();
         this.bebujyret=Rasoqymi.cyce();
         this.piqitogo=Rasoqymi.geqov();
         super();
         this.quhy.nacesoceq=true;
         addChild(this.quhy);
         addChild(this.bebujyret);
         addChild(this.piqitogo);
         this.quhy.sozy.addOnce(this.rowival);
         this.piqitogo.sozy.addOnce(this.fej);
         return;
      }

      public const sozy:Hugyqufyq = new Hugyqufyq(String);

      private var quhy:Qynaj;

      private var bebujyret:Duhi;

      private var piqitogo:Qynaj;

      private var state:Taqosohuf;

      public function initialize(param1:Taqosohuf) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.state=param1;
         this.tavulaju(this.state.puda,Taqosohuf.LEFT);
         if(this.state.wehyte)
         {
            this.tavulaju(this.state.wehyte,Taqosohuf.RIGHT);
         }
         this.darinum();
         return;
      }

      public function tavulaju(param1:Bezuco, param2:String) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:Qynaj = null;
         if(param1)
         {
            _loc3_=param2==Taqosohuf.LEFT?this.quhy:this.piqitogo;
            _loc3_.tavulaju(param1);
         }
         return;
      }

      private function rowival() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.sozy.dispatch(Taqosohuf.LEFT);
         return;
      }

      private function fej() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.sozy.dispatch(Taqosohuf.RIGHT);
         return;
      }

      public function darinum() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.state.donekecip())
         {
            this.bebujyret.kyfefak(true);
            this.piqitogo.kyfefak(true);
            this.quhy.kyfefak(true);
         }
         else
         {
            this.piqitogo.kyfefak(this.state.wehyte==null);
            this.quhy.kyfefak(this.state.puda==null);
            this.bebujyret.kyfefak(false);
         }
         return;
      }
   }

}