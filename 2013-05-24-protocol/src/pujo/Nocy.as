package pujo
{
   import dulywywo.Command;
   import wegyluke.Hez;
   import fidymu.Nalyp;


   public class Nocy extends Command
   {
      public function Nocy() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var petName:String;

      public var tovifafo:int;

      public var naval:Hez;

      override public function execute() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.naval.dispatch(new Nalyp(this.petName,this.tovifafo));
         return;
      }
   }

}