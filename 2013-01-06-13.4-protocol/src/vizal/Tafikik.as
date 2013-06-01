package vizal
{
[CLASS1055]   import tinava.Dab;
   import tinava.Wusozuve;


   public class Tafikik extends Dab
   {
      public function Tafikik(... rest) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.data=[];
         super(rest);
         return;
      }

      private var data:Array;

      private var log:Boolean = true;

      override public function dispatch(... rest) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.log)
         {
            this.data.push(rest);
         }
         super.dispatch.apply(this,rest);
         return;
      }

      override public function add(param1:Function) : Wusozuve {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Wusozuve = super.add(param1);
         while(this.data.length>0)
         {
            param1.apply(this,this.data.shift());
         }
         this.log=false;
         return _loc2_;
      }

      override public function addOnce(param1:Function) : Wusozuve {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Wusozuve = null;
         if(this.data.length>0)
         {
            param1.apply(this,this.data.shift());
         }
         else
         {
            _loc2_=super.addOnce(param1);
            this.log=false;
         }
         while(this.data.length>0)
         {
            this.data.shift();
         }
         return _loc2_;
      }

      public function nutyr() : int {
         return this.data.length;
      }
   }
[/CLASS]
}