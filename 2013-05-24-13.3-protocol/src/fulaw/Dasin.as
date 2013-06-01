package fulaw
{
   import tulunyno.Hugyqufyq;
   import kabam.rotmg.assets.model.Jyzirilof;


   public class Dasin extends Object
   {
      public function Dasin() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.state=Wuduler.NULL;
         super();
         return;
      }

      public const seda:Hugyqufyq = new Hugyqufyq(Dasin);

      public var id:int = 0;

      public var name:String = "";

      public var unlockLevel:int;

      public var ladewavaq:Jyzirilof;

      public var cost:int;

      public var limited:Boolean = false;

      private var state:Wuduler;

      private var murojywyh:Boolean;

      public function ruqy() : Boolean {
         return this.murojywyh;
      }

      public function piloni(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.murojywyh!=param1)
         {
            this.murojywyh=param1;
            this.seda.dispatch(this);
         }
         return;
      }

      public function fepyzat() : Wuduler {
         return this.state;
      }

      public function setState(param1:Wuduler) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.state!=param1)
         {
            this.state=param1;
            this.seda.dispatch(this);
         }
         return;
      }
   }

}