      subroutine dt3q_d(d1,q2,t4,dedt3q)

      implicit double precision(a-h,o-z)

      dimension d1(3),q2(3,3),t4(3,3,3,3),dedt3q(3)

c  this subroutine evaluates the quadrupole-quadrupole
c  electrostatic interaction

      dimension a(3,10),b(10)

      a(1,1)=t4(1,1,1,1)
      a(1,2)=t4(1,1,1,2)
      a(1,3)=t4(1,1,1,3)
      a(1,4)=t4(1,1,2,2)
      a(1,5)=t4(1,1,2,3)
      a(1,6)=t4(1,1,3,3)
      a(1,7)=t4(1,2,2,2)
      a(1,8)=t4(1,2,2,3)
      a(1,9)=t4(1,2,3,3)
      a(1,10)=t4(1,3,3,3)

      a(2,1)=t4(1,1,1,2)
      a(2,2)=t4(1,1,2,2)
      a(2,3)=t4(1,1,2,3)
      a(2,4)=t4(1,2,2,2)
      a(2,5)=t4(1,2,2,3)
      a(2,6)=t4(1,2,3,3)
      a(2,7)=t4(2,2,2,2)
      a(2,8)=t4(2,2,2,3)
      a(2,9)=t4(2,2,3,3)
      a(2,10)=t4(2,3,3,3)

      a(3,1)=t4(1,1,1,3)
      a(3,2)=t4(1,1,2,3)
      a(3,3)=t4(1,1,3,3)
      a(3,4)=t4(1,2,2,3)
      a(3,5)=t4(1,2,3,3)
      a(3,6)=t4(1,3,3,3)
      a(3,7)=t4(2,2,2,3)
      a(3,8)=t4(2,2,3,3)
      a(3,9)=t4(2,3,3,3)
      a(3,10)=t4(3,3,3,3)

      b(1)=d1(1)*q2(1,1)
      b(2)=2.d0*d1(1)*q2(1,2)+d1(2)*q2(1,1)
      b(3)=2.d0*d1(1)*q2(1,3)+d1(3)*q2(1,1)
      b(4)=2.d0*d1(2)*q2(1,2)+d1(1)*q2(2,2)
      b(5)=2.d0*(d1(1)*q2(2,3)+d1(2)*q2(1,3)+d1(3)*q2(1,2))
      b(6)=2.d0*d1(3)*q2(1,3)+d1(1)*q2(3,3)
      b(7)=d1(2)*q2(2,2)
      b(8)=2.d0*d1(2)*q2(2,3)+d1(3)*q2(2,2)
      b(9)=2.d0*d1(3)*q2(2,3)+d1(2)*q2(3,3)
      b(10)=d1(3)*q2(3,3)

      dedt3q(1)=a(1,1)*b(1)+a(1,2)*b(2)+a(1,3)*b(3)+a(1,4)*b(4)+
     .      a(1,5)*b(5)+a(1,6)*b(6)+a(1,7)*b(7)+a(1,8)*b(8)+a(1,9)*b(9)+
     .      a(1,10)*b(10)

      dedt3q(2)=a(2,1)*b(1)+a(2,2)*b(2)+a(2,3)*b(3)+a(2,4)*b(4)+
     .      a(2,5)*b(5)+a(2,6)*b(6)+a(2,7)*b(7)+a(2,8)*b(8)+a(2,9)*b(9)+
     .      a(2,10)*b(10)

      dedt3q(3)=a(3,1)*b(1)+a(3,2)*b(2)+a(3,3)*b(3)+a(3,4)*b(4)+
     .      a(3,5)*b(5)+a(3,6)*b(6)+a(3,7)*b(7)+a(3,8)*b(8)+a(3,9)*b(9)+
     .      a(3,10)*b(10)

      return
      end
