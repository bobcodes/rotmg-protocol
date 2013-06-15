package copano
{
   import __AS3__.vec.Vector;
   import loqaj.Rivylicec;
   import com.company.assembleegameclient.objects.GameObject;
   import com.company.assembleegameclient.objects.Player;


   public class Jofedofuq extends Byz
   {
      public function Jofedofuq(param1:GameObject, param2:Player, param3:int=0, param4:Boolean=false) {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc6_:Rivylicec = null;
         super(param1,param2,param3);
         this.hyzekop=new Vector.<Rivylicec>(this.vugoqupuq);
         this.qyfa=param4;
         var _loc5_:* = 0;
         while(_loc5_<this.vugoqupuq)
         {
            _loc6_=new Rivylicec(_loc5_+liboriwew,this,dymyd);
            _loc6_.qamudo(_loc5_+1);
            ciboc(_loc6_,2,_loc5_);
            this.hyzekop[_loc5_]=_loc6_;
            _loc5_++;
         }
         return;
      }

      private const vugoqupuq:uint = 8;

      private var hyzekop:Vector.<Rivylicec>;

      private var qyfa:Boolean;

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