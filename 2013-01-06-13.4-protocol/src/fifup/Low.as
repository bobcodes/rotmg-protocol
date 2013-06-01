package fifup
{
[CLASS1023]   import bikyvym.Kynidamy;
   import bikyvym.Cedymynet;
   import bikyvym.Werofo;


   public class Low extends Object implements Kynidamy
   {
      public function Low(param1:Cedymynet) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         this.nagygob=param1;
         return;
      }

      private const dumu:Diqurybuj = new Diqurybuj();

      private var nagygob:Cedymynet;

      public function log(param1:Object, param2:uint, param3:int, param4:String, param5:Array=null) : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         trace(param3+" "+Werofo.NAME[param2]+" "+this.nagygob+" "+param1+" - "+this.dumu.velecula(param4,param5));
         return;
      }
   }
[/CLASS]
}