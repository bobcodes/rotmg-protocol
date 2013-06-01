package fomykuq
{
[CLASS139]   import flash.utils.Dictionary;
   import kisej.Syjyk;
   import bikyvym.Cedymynet;
   import bikyvym.Voduzak;
   import kisej.Metunyjy;


   public class Lorykuqun extends Object
   {
      public function Lorykuqun(param1:Cedymynet) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         this.nagygob=param1;
         this.vuwir=this.nagygob.diruboli(this);
         return;
      }

      private const pubutahic:String = Sedubali.create(Lorykuqun);

      private const kunalodos:Dictionary = new Dictionary(true);

      private const javo:Syjyk = new Metunyjy();

      private var nagygob:Cedymynet;

      private var vuwir:Voduzak;

      public function hyjop(param1:Object) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Class = null;
         if(param1 is Class)
         {
         }
         else
         {
            _loc2_=this.javo.gemydejoc(param1);
            if(this.kunalodos[_loc2_])
            {
               return;
            }
            this.vuwir.debug("Installing extension {0}",[param1]);
            this.kunalodos[_loc2_]=true;
            param1.extend(this.nagygob);
         }
         return;
      }

      public function toString() : String {
         return this.pubutahic;
      }
   }
[/CLASS]
}