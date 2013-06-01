package tehakab
{
[CLASS105]   import tinava.Dab;
   import __AS3__.vec.Vector;


   public class Supuvygac extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Supuvygac() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public static const coz:int = 782;

      public const selected:Dab = new Dab(Cusifyha);

      private const map:Object = {};

      private const classes:Vector.<Cusifyha> = new Vector.<Cusifyha>(0);

      private var count:uint = 0;

      private var nunir:Cusifyha;

      public function volykatij() : uint {
         return this.count;
      }

      public function lylewe(param1:int) : Cusifyha {
         return this.classes[param1];
      }

      public function waqy(param1:int) : Cusifyha {
         return this.map[param1]=(this.map[param1])||(this.wez());
      }

      private function wez() : Cusifyha {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Cusifyha = new Cusifyha();
         _loc1_.selected.add(this.danamy);
         this.count=this.classes.push(_loc1_);
         return _loc1_;
      }

      private function danamy(param1:Cusifyha) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.nunir!=param1)
         {
            this.nunir=param1;
            this.selected.dispatch(param1);
         }
         return;
      }

      public function docew() : Cusifyha {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return (this.nunir)||(this.waqy(coz));
      }

      public function vusic(param1:int) : Copaqufiv {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc2_:Copaqufiv = null;
         var _loc3_:Cusifyha = null;
         for each (_loc3_ in this.classes)
         {
            _loc2_=_loc3_.pikyremo.vobasyg(param1);
            if(_loc2_!=_loc3_.pikyremo.hasemuma())
            {
               break;
            }
         }
         return _loc2_;
      }
   }
[/CLASS]
}