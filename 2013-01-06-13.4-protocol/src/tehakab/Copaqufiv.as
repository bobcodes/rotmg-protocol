package tehakab
{
[CLASS766]   import tinava.Dab;
   import kabam.rotmg.assets.model.Kybepujyf;


   public class Copaqufiv extends Object
   {
      public function Copaqufiv() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.state=Dur.NULL;
         super();
         return;
      }

      public const copysa:Dab = new Dab(Copaqufiv);

      public var id:int = 0;

      public var name:String = "";

      public var unlockLevel:int;

      public var jaqyb:Kybepujyf;

      public var cost:int;

      public var limited:Boolean = false;

      private var state:Dur;

      private var gawuly:Boolean;

      public function bawy() : Boolean {
         return this.gawuly;
      }

      public function ryb(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.gawuly!=param1)
         {
            this.gawuly=param1;
            this.copysa.dispatch(this);
         }
         return;
      }

      public function farydowu() : Dur {
         return this.state;
      }

      public function setState(param1:Dur) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.state!=param1)
         {
            this.state=param1;
            this.copysa.dispatch(this);
         }
         return;
      }
   }
[/CLASS]
}