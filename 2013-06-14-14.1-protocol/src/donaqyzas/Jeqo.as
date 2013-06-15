package donaqyzas
{
   import flash.utils.Dictionary;
   import nizyfu.Musaj;
   import hunavefeg.Hyne;
   import hunavefeg.Depyrew;
   import nizyfu.Pobil;


   public class Jeqo extends Object
   {
      public function Jeqo(param1:Hyne) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         this.qasebe=param1;
         this.nyti=this.qasebe.jok(this);
         return;
      }

      private const mohabahi:String = Rabymuse.create(Jeqo);

      private const pobykig:Dictionary = new Dictionary(true);

      private const hegaqodyp:Musaj = new Pobil();

      private var qasebe:Hyne;

      private var nyti:Depyrew;

      public function tycomeku(param1:Object) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Class = null;
         if(param1 is Class)
         {
         }
         else
         {
            _loc2_=this.hegaqodyp.luzeq(param1);
            if(this.pobykig[_loc2_])
            {
               return;
            }
            this.nyti.debug("Installing extension {0}",[param1]);
            this.pobykig[_loc2_]=true;
            param1.extend(this.qasebe);
         }
         return;
      }

      public function toString() : String {
         return this.mohabahi;
      }
   }

}