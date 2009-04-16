!---------------------------------------------------------------------- 
!---------------------------------------------------------------------- 
!   ppp :    A continuous dynamical system with period doubling
!---------------------------------------------------------------------- 
!---------------------------------------------------------------------- 
! 
      SUBROUTINE FUNC(NDIM,U,ICP,PAR,IJAC,F,DFDU,DFDP) 
!     ---------- ---- 
! 
      IMPLICIT DOUBLE PRECISION (A-H,O-Z) 
      DIMENSION U(NDIM),PAR(*),F(NDIM)
! 
      F(1)= U(1)*(1-U(1)) - PAR(4)*U(1)*U(2) 
      F(2)=-PAR(2)*U(2)   + PAR(4)*U(1)*U(2) - PAR(5)*U(2)*U(3) &
                          - PAR(1)*(1-EXP(-PAR(6)*U(2))) 
      F(3)=-PAR(3)*U(3)   + PAR(5)*U(2)*U(3) 
! 
      RETURN 
      END 
! 
      SUBROUTINE STPNT(NDIM,U,PAR) 
!     ---------- ----- 
! 
      IMPLICIT DOUBLE PRECISION (A-H,O-Z) 
      DIMENSION U(NDIM),PAR(*) 
! 
      U(1)=1.0 
      U(2)=0.0 
      U(3)=0.0 
! 
      PAR(1)=0.0 
      PAR(2)=0.25 
      PAR(3)=0.5 
      PAR(4)=3.0 
      PAR(5)=3.0 
      PAR(6)=5.0 
! 
      RETURN 
      END 
! 
      SUBROUTINE BCND 
      RETURN 
      END 
! 
      SUBROUTINE ICND 
      RETURN 
      END 
! 
      SUBROUTINE FOPT 
      RETURN 
      END 
! 
      SUBROUTINE PVLS
      RETURN 
      END 