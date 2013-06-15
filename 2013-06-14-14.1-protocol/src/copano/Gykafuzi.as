package copano
{
   import __AS3__.vec.Vector;
   import loqaj.Kuk;
   import com.company.assembleegameclient.objects.GameObject;
   import com.company.assembleegameclient.objects.Player;


   public class Gykafuzi extends Byz
   {
      public function Gykafuzi(param1:GameObject, param2:Player) {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc4_:Kuk = null;
         super(param1,param2,0);
         this.hyzekop=new Vector.<Kuk>(this.vugoqupuq);
         var _loc3_:* = 0;
         while(_loc3_<this.vugoqupuq)
         {
            _loc4_=new Kuk(_loc3_+liboriwew,this,dymyd);
            ciboc(_loc4_,2,_loc3_);
            this.hyzekop[_loc3_]=_loc4_;
            _loc3_++;
         }
         return;
      }

      private const vugoqupuq:uint = 8;

      private var hyzekop:Vector.<Kuk>;

      override public function setItems(param1:Vector.<int>, param2:int=0) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc3_:* = false;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         if(param1)
         {
            _loc3_=false;
            _loc4_=param1.length;
            _loc5_=0;
            while(_loc5_<this.vugoqupuq)
            {
               if(_loc5_+liboriwew<_loc4_)
               {
                  if(this.hyzekop[_loc5_].setItem(param1[_loc5_+liboriwew]))
                  {
                     _loc3_=true;
                  }
               }
               else
               {
                  if(this.hyzekop[_loc5_].setItem(-1))
                  {
                     _loc3_=true;
                  }
               }
               _loc5_++;
            }
            if(_loc3_)
            {
               pakojef();
            }
         }
         return;
      }
   }

}