package tehakab
{
[CLASS765]   import tinava.Dab;
   import __AS3__.vec.Vector;


   public class Cusifyha extends Object
   {
      public function Cusifyha() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public const selected:Dab = new Dab(Cusifyha);

      public var id:int;

      public var name:String;

      public var description:String;

      public var wujijyp:String;

      public var buhofo:String;

      public var wihi:Number;

      public var gakiz:Vector.<int>;

      public var hyq:Vector.<int>;

      public var cavy:Halon;

      public var pulyw:Halon;

      public var attack:Halon;

      public var defense:Halon;

      public var speed:Halon;

      public var dexterity:Halon;

      public var mocesunam:Halon;

      public var zoso:Halon;

      public var unlockCost:int;

      private var kev:int;

      private var gawuly:Boolean;

      public const nalyzig:Vector.<Kana> = new Vector.<Kana>(0);

      public const pikyremo:Pytowiwow = new Pytowiwow();

      public function bawy() : Boolean {
         return this.gawuly;
      }

      public function ryb(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.gawuly!=param1)
         {
            this.gawuly=param1;
         }
         return;
      }

      public function qogibokod() : int {
         return this.kev;
      }

      public function zehac(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.kev=param1;
         this.pikyremo.woni(this.kev);
         return;
      }
   }
[/CLASS]
}