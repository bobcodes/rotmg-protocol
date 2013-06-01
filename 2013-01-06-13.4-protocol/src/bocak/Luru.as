package bocak
{
[CLASS304]   import tubovetyc.Command;
   import kirofyny.Hehuf;
   import jat.Bijaf;


   public class Luru extends Command
   {
      public function Luru() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var petName:String;

      public var talisy:int;

      public var lyhog:Hehuf;

      override public function execute() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.lyhog.dispatch(new Bijaf(this.petName,this.talisy));
         return;
      }
   }
[/CLASS]
}