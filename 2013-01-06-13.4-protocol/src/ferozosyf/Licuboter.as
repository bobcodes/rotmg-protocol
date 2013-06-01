package ferozosyf
{
[CLASS1063]   import __AS3__.vec.Vector;
   import daloraf.Humy;
   import com.company.assembleegameclient.objects.GameObject;
   import com.company.assembleegameclient.objects.Player;


   public class Licuboter extends Jogohyh
   {
      public function Licuboter(param1:GameObject, param2:Player) {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc4_:Humy = null;
         super(param1,param2,0);
         this.fynofive=new Vector.<Humy>(this.ludizyry);
         var _loc3_:* = 0;
         while(_loc3_<this.ludizyry)
         {
            _loc4_=new Humy(_loc3_+nivydyh,this,vaq);
            wozuvis(_loc4_,2,_loc3_);
            this.fynofive[_loc3_]=_loc4_;
            _loc3_++;
         }
         return;
      }

      private const ludizyry:uint = 8;

      private var fynofive:Vector.<Humy>;

      override public function setItems(param1:Vector.<int>, param2:int=0) : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc3_:* = false;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         if(param1)
         {
            _loc3_=false;
            _loc4_=param1.length;
            _loc5_=0;
            while(_loc5_<this.ludizyry)
            {
               if(_loc5_+nivydyh<_loc4_)
               {
                  if(this.fynofive[_loc5_].setItem(param1[_loc5_+nivydyh]))
                  {
                     _loc3_=true;
                  }
               }
               else
               {
                  if(this.fynofive[_loc5_].setItem(-1))
                  {
                     _loc3_=true;
                  }
               }
               _loc5_++;
            }
            if(_loc3_)
            {
               dotu();
            }
         }
         return;
      }
   }
[/CLASS]
}