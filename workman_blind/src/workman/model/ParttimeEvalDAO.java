package workman.model;

import java.sql.SQLException;
import java.util.ArrayList;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;

import lombok.extern.slf4j.Slf4j;
import workman.model.dto.Company;
import workman.model.dto.Member;
import workman.model.util.PublicCommon;
import workman.model.dto.ParttimeEval;

public class ParttimeEvalDAO {

	public static boolean addPTEval(String userid, String companyname, String proscons, String wagedelay, String environment, String incline, String opinion)
			 {

		EntityManager em = PublicCommon.getEntityManager();
		EntityTransaction tx = em.getTransaction();
		tx.begin();

		boolean result = false;

		try {
			Member member = em.find(Member.class, userid);
			Company company = em.find(Company.class, companyname);
			
			ParttimeEval pteval = ParttimeEval.builder().userid(member).companyname(company).proscons(proscons).wagedelay(wagedelay).environment(environment)
					.incline(incline).opinion(opinion).build();
			
			member.getParttimeevals().add(pteval);
			company.getParttimeevals().add(pteval);
			
			em.persist(pteval);
			tx.commit();

			result = true;

		} catch (Exception e) {

			tx.rollback();
			e.printStackTrace();

		} finally {

			em.close();

		}
		return result;
	}

	public static boolean updatePTEvalProCon(int evalnum, String proscons)  {

		EntityManager em = PublicCommon.getEntityManager();
		EntityTransaction tx = em.getTransaction();
		tx.begin();

		boolean result = false;

		try {

			ParttimeEval pteval = em.find(ParttimeEval.class, evalnum);

			pteval.setProscons(proscons);
			tx.commit();

			result = true;

		} catch (Exception e) {

			tx.rollback();
			e.printStackTrace();

		} finally {

			em.close();
		}
		return result;
	}

	public static boolean updatePTEvalWagedelay(int evalnum, String wagedelay) {

		EntityManager em = PublicCommon.getEntityManager();
		EntityTransaction tx = em.getTransaction();
		tx.begin();

		boolean result = false;

		try {

			ParttimeEval pteval = em.find(ParttimeEval.class, evalnum);

			pteval.setWagedelay(wagedelay);
			tx.commit();

			result = true;

		} catch (Exception e) {

			tx.rollback();
			e.printStackTrace();

		} finally {

			em.close();

		}
		return result;
	}

	public static boolean updatePTEvalEnv(int evalnum, String environment) {

		EntityManager em = PublicCommon.getEntityManager();
		EntityTransaction tx = em.getTransaction();
		tx.begin();

		boolean result = false;

		try {

			ParttimeEval pteval = em.find(ParttimeEval.class, evalnum);

			pteval.setEnvironment(environment);
			tx.commit();

			result = true;

		} catch (Exception e) {

			tx.rollback();
			e.printStackTrace();

		} finally {

			em.close();

		}
		return result;
	}

	public static boolean updatePTEvalInc(int evalnum, String incline) {

		EntityManager em = PublicCommon.getEntityManager();
		EntityTransaction tx = em.getTransaction();
		tx.begin();

		boolean result = false;

		try {

			ParttimeEval pteval = em.find(ParttimeEval.class, evalnum);

			pteval.setIncline(incline);
			tx.commit();

			result = true;

		} catch (Exception e) {

			tx.rollback();
			e.printStackTrace();

		} finally {

			em.close();

		}
		return result;
	}

	public static boolean updatePTEvalComment(int evalnum, String opinion) {

		EntityManager em = PublicCommon.getEntityManager();
		EntityTransaction tx = em.getTransaction();
		tx.begin();

		boolean result = false;

		try {

			ParttimeEval pteval = em.find(ParttimeEval.class, evalnum);

			pteval.setOpinion(opinion);
			tx.commit();

			result = true;

		} catch (Exception e) {

			tx.rollback();
			e.printStackTrace();

		} finally {

			em.close();

		}
		return result;
	}


	public static boolean deletePTEval(int evalnum) {

		EntityManager em = PublicCommon.getEntityManager();
		EntityTransaction tx = em.getTransaction();
		tx.begin();

		boolean result = false;

		try {

			ParttimeEval pteval = em.find(ParttimeEval.class, evalnum);

			em.remove(pteval);
			tx.commit();

			result = true;

		} catch (Exception e) {

			tx.rollback();
			e.printStackTrace();

		} finally {

			em.close();

		}
		return result;
	}

	public static ParttimeEval getPTEval(int evalnum) {

		EntityManager em = PublicCommon.getEntityManager();
		EntityTransaction tx = em.getTransaction();
		tx.begin();

		ParttimeEval pteval = null;

		try {

			pteval = em.find(ParttimeEval.class, evalnum);

		} catch (Exception e) {

			e.printStackTrace();

		} finally {

			em.close();

		}
		return pteval;
	}

	public static ArrayList<ParttimeEval> getAllPTEval() {
		
		EntityManager em = PublicCommon.getEntityManager();
		EntityTransaction tx = em.getTransaction();
		tx.begin();

		ArrayList<ParttimeEval> ptevallist = null;

		try {
			ptevallist = (ArrayList<ParttimeEval>) em
					.createNativeQuery("select * from parttimeeval", ParttimeEval.class).getResultList();
		} catch (Exception e) {

			e.printStackTrace();

		} finally {

			em.close();

		}
		return ptevallist;
	}
}
