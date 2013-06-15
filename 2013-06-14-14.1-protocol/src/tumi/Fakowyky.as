package tumi
{
   import micac.Ciqyl;
   import dicyl.Mukyhokot;
   import pumoc.Juc;
   import aaa.RotmgParameters.RotmgParameters;
   import komi.Vibemod;


   public class Fakowyky extends Object
   {
      public function Fakowyky() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var data:String;

      public var fer:Ciqyl;

      public var daju:Mukyhokot;

      public function execute() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.data=="/help")
         {
            this.daju.dispatch(Juc.make(RotmgParameters.quc,Vibemod.qamisybov));
         }
         else
         {
            this.fer.qyhowo.gsc_.playerText(this.data);
         }
         return;
      }
   }

}