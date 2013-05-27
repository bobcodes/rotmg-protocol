package fulaw
{
   import tulunyno.Hugyqufyq;
   import __AS3__.vec.Vector;


   public class Jimi extends Object
   {
      public function Jimi() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public const selected:Hugyqufyq = new Hugyqufyq(Jimi);

      public var id:int;

      public var name:String;

      public var description:String;

      public var buvipy:String;

      public var mamanuw:String;

      public var boru:Number;

      public var jonicez:Vector.<int>;

      public var zyneqah:Vector.<int>;

      public var bovo:Gucobo;

      public var neniq:Gucobo;

      public var attack:Gucobo;

      public var defense:Gucobo;

      public var speed:Gucobo;

      public var dexterity:Gucobo;

      public var duzes:Gucobo;

      public var jonavib:Gucobo;

      public var unlockCost:int;

      private var zufumivos:int;

      private var murojywyh:Boolean;

      public const lakegaci:Vector.<Guquv> = new Vector.<Guquv>(0);

      public const socucu:Toloku = new Toloku();

      public function ruqy() : Boolean {
         return this.murojywyh;
      }

      public function piloni(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.murojywyh!=param1)
         {
            this.murojywyh=param1;
         }
         return;
      }

      public function nave() : int {
         return this.zufumivos;
      }

      public function tulodygof(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.zufumivos=param1;
         this.socucu.pywodyca(this.zufumivos);
         return;
      }
   }

}