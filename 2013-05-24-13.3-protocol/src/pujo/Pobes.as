package pujo
{
   import qov.Command;
   import zoroc.Gecezyw;
   import zoroc.Taqosohuf;
   import zoroc.Bezuco;


   public class Pobes extends Command
   {
      public function Pobes() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var kydy:int;

      public var duqa:Gecezyw;

      public var zype:Toqaqeg;

      public var paqocahu:Taqosohuf;

      override public function execute() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.kydy<0)
         {
            this.duqa.tovigyta();
         }
         else
         {
            this.duqa.qoqycofy(this.duqa.guj(this.kydy));
         }
         this.paqocahu.puda=this.kydy<0?null:this.paqocahu.puda=this.duqa.guj(this.kydy);
         return;
      }
   }

}